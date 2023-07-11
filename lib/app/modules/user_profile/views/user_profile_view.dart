import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../themes.dart';
import '../controllers/user_profile_controller.dart';

class UserProfileView extends GetView<UserProfileController> {
  const UserProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          elevation: 0,
          backgroundColor: primaryColor1,
          title: const Text("TabProfile"),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 250.h,
                  decoration: BoxDecoration(
                    // image: DecorationImage(
                    //     image: AssetImage('assets/images/bg_profile.png'),
                    //     fit: BoxFit.cover),
                    color: primaryColor2,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(18.0),
                        child: Icon(
                          Icons.arrow_back,
                          size: 24.0,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      SizedBox(height: 20.h),
                      Stack(
                        children: [
                          Column(
                            children: [
                              SizedBox(height: 50.h),
                              Container(
                                width: Get.width,
                                decoration: BoxDecoration(
                                    color: kWhite,
                                    borderRadius: BorderRadius.circular(27)),
                                child: Column(children: [
                                  SizedBox(height: 80.h),
                                  Text(
                                    controller.user.value.relawan!.nama
                                        .toString(),
                                    style: semiBoldText16,
                                  ),
                                  Text(
                                      controller
                                          .user.value.relawan!.namaAlokasiUnit
                                          .toString(),
                                      style: semiBoldText12.copyWith(
                                          color: primaryColor3)),
                                  Text(controller.user.value.email.toString(),
                                      style: mediumText10.copyWith(
                                          color: primaryColor4)),
                                  SizedBox(height: 12.h),
                                  Container(
                                    padding: const EdgeInsets.all(8.0),
                                    width: 150.w,
                                    decoration: BoxDecoration(
                                        color: primaryColor5,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Column(children: [
                                        Text(
                                          "Point Relawan Anda :",
                                          style: mediumText10.copyWith(
                                              color: primaryColor3),
                                        ),
                                        Obx(
                                          () => Text(
                                            controller.poinRelawan.value,
                                            style: semiBoldText12.copyWith(
                                                color: primaryColor2),
                                          ),
                                        )
                                      ]),
                                    ),
                                  ),
                                  SizedBox(height: 12.h),
                                  Container(
                                    height: 55.h,
                                    padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                                    child: TextFormField(
                                      controller: controller.cNik,
                                      decoration: InputDecoration(
                                        filled: false,
                                        hintText: "NIK",
                                        border: UnderlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        prefixIcon: const Icon(Icons.person),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                                    height: 55.h,
                                    child: TextFormField(
                                      controller: controller.cHp,
                                      decoration: InputDecoration(
                                        filled: false,
                                        fillColor: appGrey2,
                                        hintText: "No Handphone",
                                        border: UnderlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        prefixIcon:
                                            const Icon(Icons.phone_android),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                                    height: 55.h,
                                    child: TextFormField(
                                      controller: controller.cNim,
                                      decoration: InputDecoration(
                                        filled: false,
                                        fillColor: appGrey2,
                                        hintText: "NIM",
                                        border: UnderlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        prefixIcon:
                                            const Icon(FontAwesomeIcons.idCard),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                                    height: 55.h,
                                    child: TextFormField(
                                      controller: controller.cIg,
                                      decoration: InputDecoration(
                                        filled: false,
                                        fillColor: appGrey2,
                                        hintText: "Instagram",
                                        border: UnderlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        prefixIcon: const Icon(
                                            FontAwesomeIcons.instagram),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                                    height: 55.h,
                                    child: TextFormField(
                                      controller: controller.cTiktok,
                                      decoration: InputDecoration(
                                        filled: false,
                                        fillColor: appGrey2,
                                        hintText: "Tiktok",
                                        border: UnderlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        prefixIcon:
                                            const Icon(FontAwesomeIcons.tiktok),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                                    height: 100.h,
                                    child: TextFormField(
                                      controller: controller.cAlamat,
                                      decoration: InputDecoration(
                                        filled: false,
                                        fillColor: appGrey2,
                                        hintText: "Alamat Domisili",
                                        border: UnderlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        prefixIcon: const Icon(
                                            FontAwesomeIcons.addressBook),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 12.h),
                                ]),
                              ),
                            ],
                          ),
                          Center(
                            child: InkWell(
                              onTap: () {
                                controller.pickImage();
                              },
                              child: Container(
                                padding: EdgeInsets.all(10.0),
                                width: 120.w,
                                height: 120.h,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.white, width: 5),
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(controller
                                            .urlProfile.value.isEmpty
                                        ? "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjCX5TOKkOk3MBt8V-f8PbmGrdLHCi4BoUOs_yuZ1pekOp8U_yWcf40t66JZ4_e_JYpRTOVCl0m8ozEpLrs9Ip2Cm7kQz4fUnUFh8Jcv8fMFfPbfbyWEEKne0S9e_U6fWEmcz0oihuJM6sP1cGFqdJZbLjaEQnGdgJvcxctqhMbNw632OKuAMBMwL86/w640-h596/pp%20kosong%20wa%20default.jpg"
                                        : controller.urlProfile.value),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: InkWell(
                          onTap: () {},
                          child: Ink(
                            height: 54.h,
                            decoration: BoxDecoration(
                              color: btnPrimary,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Center(
                                child: Text("Simpan",
                                    style: mediumText14.copyWith(
                                        fontSize: 14.sp,
                                        color:
                                            primaryColor1.withOpacity(0.5)))),
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
