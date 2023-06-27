import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:renjani/app/api/auth_api.dart';
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

  final cUsername = TextEditingController();
  RxString username = ''.obs;
  bool isValidusername = false;

  final cPassword = TextEditingController();
  RxString password = ''.obs;
  bool isValidPassword = false;

  RxBool isValidForm = false.obs;
  RxBool isLoading = false.obs;

  @override
  void onInit() {
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

      await Future.delayed(const Duration(seconds: 1));
      showToast(message: "Berhasil Login");
      isLoading(false);
      Get.offNamed(Routes.HOME);

      //menyimpan ke login
      await AppStorage.write(key: CACHE_ACCESS_USERNAME, value: cUsername.text);
      await AppStorage.write(
        key: CACHE_ACCESS_PASSWORD,
        value: cPassword.text,
      );
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
    if (!isValidForm.isFalse) {
      showToast(message: "Lengkapai Data Login", color: btnRed);
      return;
    }
    try {
      isLoading(true);
      AppUtils.dismissKeyboard();

      final respon = await AuthApi.login(
          username: 'relawanjatim3@yopmail.com', password: 'Qwerty321');

      saveToken(respon['accessToken']);

      await Future.delayed(const Duration(seconds: 1));
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

  Future<void> saveToken(String token) async {
    await AppCycleService().setTokenWithTimer(token);
    await AppStorage.write(key: CACHE_ACCESS_TOKEN, value: token);
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
