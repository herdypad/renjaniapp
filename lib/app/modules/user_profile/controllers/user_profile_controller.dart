import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:renjani/app/controllers/user_info_controller.dart';
import 'package:renjani/app/models/whoiam_m.dart';
import 'package:renjani/app/modules/user_profile/repo/userProfileRepo.dart';

class UserProfileController extends GetxController {
  final tag = "UserProfileController";
  final cUserInfo = Get.find<UserInfoController>();
  Rx<WhoiamM> user = WhoiamM().obs;

  final cNik = TextEditingController(text: "");
  final cHp = TextEditingController(text: "");
  final cNim = TextEditingController(text: "");
  final cIg = TextEditingController(text: "");
  final cTiktok = TextEditingController(text: "");
  final cAlamat = TextEditingController(text: "");

  RxString poinRelawan = '0'.obs;
  RxString urlProfile =
      'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjCX5TOKkOk3MBt8V-f8PbmGrdLHCi4BoUOs_yuZ1pekOp8U_yWcf40t66JZ4_e_JYpRTOVCl0m8ozEpLrs9Ip2Cm7kQz4fUnUFh8Jcv8fMFfPbfbyWEEKne0S9e_U6fWEmcz0oihuJM6sP1cGFqdJZbLjaEQnGdgJvcxctqhMbNw632OKuAMBMwL86/w640-h596/pp%20kosong%20wa%20default.jpg'
          .obs;

  File? image;

  @override
  void onInit() async {
    super.onInit();
    user(cUserInfo.user.value);
    await setData();
    getPoinUser();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> setData() async {
    cNik.text = user.value.relawan!.nik!;
    cHp.text = user.value.relawan!.notelp!;
    cNim.text = user.value.relawan!.notelp!;
    cIg.text = user.value.relawan!.instagram!;
    cTiktok.text = user.value.relawan!.tiktok!;
    cAlamat.text = user.value.relawan!.alamat!;
  }

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemp = File(image.path);
      this.image = imageTemp;
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  Future<void> getPoinUser() async {
    // final result = await RelawanAPi();
    String a = await UserProfileRepo().getPoinUserRelawan();
    poinRelawan(a);
  }

  Future<void> uploadFoto() async {}
}
