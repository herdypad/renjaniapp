import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:local_auth/local_auth.dart';
import 'package:renjani/app/api/auth_api.dart';
import 'package:renjani/app/controllers/user_info_controller.dart';
import 'package:renjani/themes.dart';
import 'package:renjani/utils/app_utils.dart';
import 'package:renjani/widgets/others/show_dialog.dart';

import '../../../../constants/constant.dart';
import '../../../../services/app_cycle_service.dart';
import '../../../../utils/app_storage.dart';
import '../../../controllers/utility_controller.dart';
import '../../../routes/app_pages.dart';

class LoginController extends GetxController {
  final tag = "LoginController";
  final cUtility = Get.find<UtilityController>();

  final formKey = GlobalKey<FormState>();

  final ScrollController _scrollController = ScrollController();
  RxBool passToggle = true.obs;

  final cUsername = TextEditingController(text: "relawanjatim3@yopmail.com");
  RxString username = ''.obs;
  bool isValidusername = false;

  final cPassword = TextEditingController(text: "Qwerty321");
  RxString password = ''.obs;
  bool isValidPassword = false;

  RxBool isValidForm = false.obs;
  RxBool isLoading = false.obs;

  //login finger
  final LocalAuthentication auth = LocalAuthentication();
  Future<bool> get canAuthenticate => auth.isDeviceSupported();

  @override
  void onInit() async {
    super.onInit();
    getDataLogin();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  //--------Implementasi--------////

  Future<void> login() async {
    if (!isValidForm.isFalse) {
      showToast(message: "Lengkapai Data Login", color: btnRed);
      return;
    }
    try {
      isLoading(true);
      AppUtils.dismissKeyboard();

      final respon = await AuthApi.login(
          username: cUsername.text, password: cPassword.text);

      logSys(respon['accessToken'].toString());
      saveToken(respon['accessToken']);

      await Future.delayed(const Duration(seconds: 2));
      await updateUserLogin();
      showToast(message: "Berhasil Login");
      isLoading(false);

      //menyimpan ke login
      await AppStorage.write(key: CACHE_ACCESS_USERNAME, value: cUsername.text);
      await AppStorage.write(
        key: CACHE_ACCESS_PASSWORD,
        value: cPassword.text,
      );

      Get.offNamed(Routes.HOME);
    } catch (e) {
      isLoading(false);
      showPopUpInfo(
        title: 'Error',
        description: "Login Gagal",
      );
      logSys(e.toString());
    }
  }

  Future<void> loginFinger() async {
    saveToken(
        ' eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJyZWxhd2FuamF0aW0zQHlvcG1haWwuY29tIiwiaWF0IjoxNjg5MTM3NTIwLCJleHAiOjE2ODkyMjM5MjAsInVzZXJEZXRhaWxzIjp7ImlkIjoxODYsInRheENlbnRlciI6bnVsbCwicmVsYXdhbiI6eyJpZFJlbGF3YW4iOjIwNSwibmFtYSI6IkZlYnJpYW4iLCJlbWFpbCI6InJlbGF3YW5qYXRpbTNAeW9wbWFpbC5jb20iLCJhbGFtYXQiOiJKTCBTYW5nZ3VsaW5nIE1hbGFuZyIsIm5payI6IjMzMDM4OTEwMjg0MTEyMzEiLCJuaW0iOiIxMjQyMTQxIiwibm90ZWxwIjoiMDg5ODk4ODk4OTgiLCJ0YWh1bkRhZnRhciI6IjIwMjMiLCJzdGF0dXMiOnsiaWRTdGF0dXMiOjI0LCJuYW1hU3RhdHVzIjoiUmVsYXdhbiJ9LCJyZWxUYXhDZW50ZXIiOnsiaWRUYXhjZW50ZXIiOjMwOCwibmFtYSI6IlVuaXZlcnNpdGFzIEJyYXdpamF5YSIsImVtYWlsIjoiYnJhd2lqYXlhQHlvcG1haWwuY29tIiwiYWxhbWF0IjoiSmwgQnJhd2lqYXlhIE1hbGFuZyIsIm5vdGVscCI6IjA4OTg5ODk4OSJ9LCJqdXJ1c2FuIjoiUGVydGFuaWFuIiwiaW5zdGFncmFtIjoiQDEyMyIsInRpa3RvayI6IkAxMjMiLCJhY3RpdmUiOjEsImZpbGVEb2t1bWVuUGVuZGFmdGFyYW4iOiI5YTc0YWQ5ZS1hMDVlLTQyYzYtYjUwZS0xODcyZjg5ZDg5ZDMucGRmIiwibGlua1ZpZGVvUGVuZGFmdGFyYW4iOiJ3d3cueW91dHViZS5jb20iLCJjb2RlT2ZDb25kdWN0IjoiNGJiNmNmODItNDlhYi00YmJjLTgyMzEtZDBlZDcxZTY3YWY2LnBkZiIsImtvZGVBbG9rYXNpVW5pdCI6IjQzNDUzMTAwMDAiLCJuYW1hQWxva2FzaVVuaXQiOiJLUFAgUHJhdGFtYSBNYWxhbmcgU2VsYXRhbiIsImltZ1JlbGF3YW4iOiJlYzQ3YzE2Ni00M2YzLTQ0YWUtODk3Yi1iZjc1NGYxMjMxMjIuanBnIiwiaW1nS3RtIjoiNTFjMjQ5Y2EtMzI5OS00MTQyLWIzNTMtM2JiMDM3OTIxYTRkLmpwZWciLCJzdGF0dXNTdXJ2ZXkiOjEsInN0YXR1c1BlbGF0aWhhbiI6MX0sInJvbGUiOlt7ImF1dGhvcml0eSI6IlJPTEVfUkVMQVdBTiJ9XX19.IuxNdUWl_BMX279iXnQL_Kx2oGvmzwUVTY_g_-QW12xD2b94HtkarneC9gFxHwNXf4MIMOrblFFYDyGB3Er2Jg');
    return Get.offNamed(Routes.HOME);

    if (!isValidForm.isFalse) {
      showToast(message: "Lengkapai Data Login", color: btnRed);
      return;
    }
    try {
      isLoading(true);
      AppUtils.dismissKeyboard();

      final respon = await AuthApi.login(
          username: 'relawanjatim3@yopmail.com', password: 'Qwerty321');

      logSys(respon.toString());

      saveToken(respon['accessToken']);

      await Future.delayed(const Duration(seconds: 1));
      await updateUserLogin();
      showToast(message: "Berhasil Login");
      isLoading(false);
      Get.offNamed(Routes.HOME);
    } catch (e) {
      isLoading(false);
      showPopUpInfo(
        title: 'Error',
        description: "Login Gagal",
      );
      logSys(e.toString());
    }
  }

  Future<bool> localAuth(BuildContext context) async {
    final auth = LocalAuthentication();
    final didAuthenticate =
        await auth.authenticate(localizedReason: 'Please authenticate');
    return didAuthenticate;
  }

  Future<void> saveToken(String token) async {
    await AppCycleService().setTokenWithTimer(token);
    await AppStorage.write(key: CACHE_ACCESS_TOKEN, value: token);
  }

  Future<void> updateUserLogin() async {
    await UserInfoController().getDataUser();
  }

  Future<void> getDataLogin() async {
    final username1 = await AppStorage.read(key: CACHE_ACCESS_USERNAME);
    final password1 = await AppStorage.read(key: CACHE_ACCESS_PASSWORD);
    if (username.isNotEmpty && password.isNotEmpty) {
      username(username1);
      password(password1);
    }
  }
}
