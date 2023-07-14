import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:renjani/utils/app_utils.dart';

import '../../../../constants/constant.dart';
import '../../../../themes.dart';
import '../../../../widgets/others/bottomsheet_custom.dart';
import '../../../../widgets/others/shimmer_indicator.dart';
import '../component/edit_profile_photo_bottomsheet.dart';
import '../controllers/user_profile_controller.dart';

class UserProfileView extends GetView<UserProfileController> {
  const UserProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: const BackButton(color: Colors.black),
          backgroundColor: primaryColor2,
          title: const Text(
            "Profile",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: controller.cUserInfo.isLoadData.isFalse
            ? SingleChildScrollView(
                child: Container(
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 210.h,
                        decoration: BoxDecoration(
                          // image: DecorationImage(
                          //     image: AssetImage('assets/images/bg_profile.png'),
                          //     fit: BoxFit.cover),
                          color: primaryColor2,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            SizedBox(height: 1.h),
                            Stack(
                              children: [
                                controller.isloadData.isFalse
                                    ? Column(
                                        children: [
                                          SizedBox(height: 50.h),
                                          Container(
                                            width: Get.width,
                                            decoration: BoxDecoration(
                                                color: kWhite,
                                                borderRadius:
                                                    BorderRadius.circular(27)),
                                            child: Column(children: [
                                              SizedBox(height: 80.h),
                                              Column(
                                                children: [
                                                  Text(
                                                    controller.user.value
                                                        .relawan!.nama
                                                        .toString(),
                                                    style: semiBoldText16,
                                                  ),
                                                  Text(
                                                      controller
                                                          .user
                                                          .value
                                                          .relawan!
                                                          .namaAlokasiUnit
                                                          .toString(),
                                                      style: semiBoldText12
                                                          .copyWith(
                                                              color:
                                                                  primaryColor3)),
                                                  Text(
                                                      controller
                                                          .user.value.email
                                                          .toString(),
                                                      style:
                                                          mediumText10.copyWith(
                                                              color:
                                                                  primaryColor4)),
                                                ],
                                              ),
                                              SizedBox(height: 12.h),
                                              Container(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                width: 150.w,
                                                decoration: BoxDecoration(
                                                    color: primaryColor5,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15)),
                                                child: Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 10),
                                                  child: Column(children: [
                                                    Text(
                                                      "Point Relawan Anda :",
                                                      style:
                                                          mediumText10.copyWith(
                                                              color:
                                                                  primaryColor3),
                                                    ),
                                                    Obx(
                                                      () => Text(
                                                        controller
                                                            .poinRelawan.value,
                                                        style: semiBoldText12
                                                            .copyWith(
                                                                color:
                                                                    primaryColor2),
                                                      ),
                                                    )
                                                  ]),
                                                ),
                                              ),
                                              SizedBox(height: 12.h),
                                              Container(
                                                height: 55.h,
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        20, 5, 20, 5),
                                                child: TextFormField(
                                                  controller: controller.cNik,
                                                  decoration: InputDecoration(
                                                    filled: false,
                                                    hintText: "NIK",
                                                    border:
                                                        UnderlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                    ),
                                                    prefixIcon: const Icon(
                                                        Icons.person),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        20, 5, 20, 5),
                                                height: 55.h,
                                                child: TextFormField(
                                                  controller: controller.cHp,
                                                  decoration: InputDecoration(
                                                    filled: false,
                                                    fillColor: appGrey2,
                                                    hintText: "No Handphone",
                                                    border:
                                                        UnderlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                    ),
                                                    prefixIcon: const Icon(
                                                        Icons.phone_android),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        20, 5, 20, 5),
                                                height: 55.h,
                                                child: TextFormField(
                                                  controller: controller.cNim,
                                                  decoration: InputDecoration(
                                                    filled: false,
                                                    fillColor: appGrey2,
                                                    hintText: "NIM",
                                                    border:
                                                        UnderlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                    ),
                                                    prefixIcon: const Icon(
                                                        FontAwesomeIcons
                                                            .idCard),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        20, 5, 20, 5),
                                                height: 55.h,
                                                child: TextFormField(
                                                  controller: controller.cIg,
                                                  decoration: InputDecoration(
                                                    filled: false,
                                                    fillColor: appGrey2,
                                                    hintText: "Instagram",
                                                    border:
                                                        UnderlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                    ),
                                                    prefixIcon: const Icon(
                                                        FontAwesomeIcons
                                                            .instagram),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        20, 5, 20, 5),
                                                height: 55.h,
                                                child: TextFormField(
                                                  controller:
                                                      controller.cTiktok,
                                                  decoration: InputDecoration(
                                                    filled: false,
                                                    fillColor: appGrey2,
                                                    hintText: "Tiktok",
                                                    border:
                                                        UnderlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                    ),
                                                    prefixIcon: const Icon(
                                                        FontAwesomeIcons
                                                            .tiktok),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        20, 5, 20, 5),
                                                height: 100.h,
                                                child: TextFormField(
                                                  controller:
                                                      controller.cAlamat,
                                                  decoration: InputDecoration(
                                                    filled: false,
                                                    fillColor: appGrey2,
                                                    hintText: "Alamat Domisili",
                                                    border:
                                                        UnderlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                    ),
                                                    prefixIcon: const Icon(
                                                        FontAwesomeIcons
                                                            .addressBook),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 12.h),
                                            ]),
                                          ),
                                        ],
                                      )
                                    : Container(),
                                Center(
                                  child: InkWell(
                                    onTap: () {
                                      // controller.pickImage();
                                      BottomSheetCustom(
                                        context: context,
                                        initialChildSize: 0.25,
                                        child:
                                            const EditProfilePhotoBottomSheet(),
                                      ).showData();
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.all(10.0),
                                      width: 120.w,
                                      height: 120.h,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.white, width: 5),
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        image: DecorationImage(
                                          onError: (exception, stackTrace) {
                                            logSys(exception.toString());
                                            const Text("img Error");
                                          },
                                          fit: BoxFit.cover,
                                          image: NetworkImage(
                                              "${BASE_URL}api/v1/landingpages/files/image/${controller.cUserInfo.user.value.relawan!.imgRelawan.toString()}"),
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
                                              color: primaryColor1
                                                  .withOpacity(0.5)))),
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
              )
            : ShimmerIndicator(
                width: Get.width,
                height: Get.height,
                borderRadius: Insets.med,
              ),
      );
    });
  }
}
