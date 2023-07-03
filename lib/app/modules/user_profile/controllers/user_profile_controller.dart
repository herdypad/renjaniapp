import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renjani/app/controllers/user_info_controller.dart';
import 'package:renjani/app/models/whoiam_m.dart';

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

  @override
  void onInit() async {
    super.onInit();
    user(cUserInfo.user.value);
    setData();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void setData() async {
    cNik.text = user.value.relawan!.nik!;
    cHp.text = user.value.relawan!.notelp!;
    cNim.text = user.value.relawan!.notelp!;
    cIg.text = user.value.relawan!.instagram!;
    cTiktok.text = user.value.relawan!.tiktok!;
    cAlamat.text = user.value.relawan!.alamat!;
  }
}
