import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../../../../themes.dart';
import '../controllers/user_profile_controller.dart';

class UserProfileView extends GetView<UserProfileController> {
  const UserProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
                  image: DecorationImage(
                      image: AssetImage('assets/images/bg_profile.png'),
                      fit: BoxFit.cover),
                  color: primaryColor1,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Padding(
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
                            //box white
                            Container(
                              width: Get.width,
                              decoration: BoxDecoration(
                                  color: kWhite,
                                  borderRadius: BorderRadius.circular(27)),
                              child: Column(children: [
                                SizedBox(height: 80.h),
                                Text(
                                  "Nurul sayfudin",
                                  style: semiBoldText16,
                                ),
                                Text("KPP Pratama Jakarta Setiabudi Enam",
                                    style: semiBoldText12.copyWith(
                                        color: primaryColor3)),
                                Text("nurul_say@gaamail.com",
                                    style: mediumText10.copyWith(
                                        color: primaryColor4)),
                                SizedBox(height: 12.h),
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  width: 150.w,
                                  decoration: BoxDecoration(
                                      color: primaryColor4,
                                      borderRadius: BorderRadius.circular(27)),
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Column(children: [
                                      Text(
                                        "Point Relawan Anda :",
                                        style: mediumText10.copyWith(
                                            color: primaryColor3),
                                      ),
                                      Text(
                                        "1000",
                                        style: semiBoldText12.copyWith(
                                            color: primaryColor2),
                                      ),
                                    ]),
                                  ),
                                ),
                                SizedBox(height: 12.h),
                                Container(
                                  height: 55.h,
                                  padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: appGrey2,
                                      labelText: "NIK",
                                      border: UnderlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(12)),
                                          borderSide: BorderSide(
                                            color: primaryColor1,
                                            width: 2,
                                          )),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(12)),
                                          borderSide: BorderSide(
                                            color: primaryColor4,
                                          )),
                                      prefixIcon: const Icon(Icons.person),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                                  height: 55.h,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: appGrey2,
                                      labelText: "No Handphone",
                                      border: UnderlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(12)),
                                          borderSide: BorderSide(
                                            color: primaryColor1,
                                            width: 2,
                                          )),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(12)),
                                          borderSide: BorderSide(
                                            color: primaryColor4,
                                          )),
                                      prefixIcon:
                                          const Icon(Icons.phone_android),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                                  height: 55.h,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: appGrey2,
                                      labelText: "NIM",
                                      border: UnderlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(12)),
                                          borderSide: BorderSide(
                                            color: primaryColor1,
                                            width: 2,
                                          )),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(12)),
                                          borderSide: BorderSide(
                                            color: primaryColor4,
                                          )),
                                      prefixIcon:
                                          const Icon(FontAwesomeIcons.idCard),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                                  height: 55.h,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: appGrey2,
                                      labelText: "Instagram",
                                      border: UnderlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(12)),
                                          borderSide: BorderSide(
                                            color: primaryColor1,
                                            width: 2,
                                          )),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(12)),
                                          borderSide: BorderSide(
                                            color: primaryColor4,
                                          )),
                                      prefixIcon: const Icon(
                                          FontAwesomeIcons.instagram),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                                  height: 55.h,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: appGrey2,
                                      labelText: "Tiktok",
                                      border: UnderlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(12)),
                                          borderSide: BorderSide(
                                            color: primaryColor1,
                                            width: 2,
                                          )),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(12)),
                                          borderSide: BorderSide(
                                            color: primaryColor4,
                                          )),
                                      prefixIcon:
                                          const Icon(FontAwesomeIcons.tiktok),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                                  height: 55.h,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: appGrey2,
                                      labelText: "Alamat Domisili",
                                      border: UnderlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(12)),
                                          borderSide: BorderSide(
                                            color: primaryColor1,
                                            width: 2,
                                          )),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(12)),
                                          borderSide: BorderSide(
                                            color: primaryColor4,
                                          )),
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
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            width: 120.w,
                            height: 120.h,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 5),
                              shape: BoxShape.circle,
                              color: Colors.white,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://images4.alphacoders.com/233/233958.jpg'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(height: 31.h),
                        Container(
                          height: 50.h,
                          width: Get.width,
                          decoration: BoxDecoration(
                              color: kWhite,
                              borderRadius: BorderRadius.circular(27)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 22),
                            child: Center(
                              child: Text(
                                "Simpan",
                                style:
                                    mediumText12.copyWith(color: primaryColor3),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
