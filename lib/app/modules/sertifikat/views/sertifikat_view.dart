import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:renjani/app/modules/home/componet/navbar.dart';
import 'package:renjani/app/routes/app_pages.dart';
import 'package:renjani/themes.dart';

import '../controllers/sertifikat_controller.dart';

class SertifikatView extends GetView<SertifikatController> {
  const SertifikatView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldKey,
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: primaryColor1,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/icons/icon_app.png",
              height: 70.0,
              fit: BoxFit.fill,
            ),
          ],
        ),
        leading: GestureDetector(
          onTap: () {
            _scaffoldKey.currentState?.openDrawer();
          },
          child: Icon(
            Icons.menu,
            size: 30,
          ),
        ),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () => {Get.toNamed(Routes.USER_PROFILE)},
                child: Icon(
                  Icons.account_circle,
                  size: 30.0,
                  color: primaryColor2,
                ),
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 200.h,
              decoration: BoxDecoration(
                color: primaryColor2,
              ),
            ),
            Container(
              child: Column(
                children: [
                  SizedBox(height: 20.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Point Relawan Anda Saat Ini :",
                          style: mediumText12.copyWith(color: primaryColor3),
                        ),
                        Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.trophy,
                              size: 20.0,
                              color: primaryColor1,
                            ),
                            SizedBox(width: 5.w),
                            Text(
                              "300.000",
                              style:
                                  semiBoldText14.copyWith(color: primaryColor1),
                            ),
                            SizedBox(width: 5.w),
                            // Icon(
                            //   FontAwesomeIcons.,
                            //   size: 20.0,
                            //   color: primaryColor1,
                            // ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 50.h),
                  //box white
                  Container(
                    width: Get.width,
                    decoration: BoxDecoration(
                        color: kWhite, borderRadius: BorderRadius.circular(27)),
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [],
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
