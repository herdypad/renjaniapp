import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:math';

import 'package:get/get.dart';
import 'package:renjani/app/modules/home/componet/navbar.dart';
import 'package:renjani/app/modules/sertifikat/views/carousel_card.dart';
import 'package:renjani/app/routes/app_pages.dart';
import 'package:renjani/themes.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:expandable_page_view/expandable_page_view.dart';

import '../controllers/sertifikat_controller.dart';

class SertifikatView extends GetView<SertifikatController> {
  const SertifikatView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();
    final _carouselController = PageController(viewportFraction: 0.9);

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
      body: SafeArea(
        child: CustomScrollView(slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 300.h,
                      decoration: BoxDecoration(
                        color: primaryColor2,
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          SizedBox(height: 20.h),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Point Relawan Anda Saat Ini :",
                                  style: mediumText14.copyWith(
                                      color: primaryColor3),
                                ),
                                SizedBox(height: 5.h),
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
                                      style: semiBoldText14.copyWith(
                                          color: primaryColor1),
                                    ),
                                    SizedBox(width: 5.w),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10.h),
                          //box white
                          ExpandablePageView.builder(
                            alignment: Alignment.topLeft,
                            controller: _carouselController,
                            // allows our shadow to be displayed outside of widget bounds
                            clipBehavior: Clip.none,
                            itemCount: 5,
                            itemBuilder: (_, index) {
                              if (!_carouselController
                                  .position.haveDimensions) {
                                return const SizedBox();
                              }

                              return AnimatedBuilder(
                                animation: _carouselController,
                                builder: (_, __) => Transform.scale(
                                  scale: max(
                                    1,
                                    (1 -
                                        (_carouselController.page! - index)
                                                .abs() /
                                            2),
                                  ),
                                  child: CarouselCard(
                                    icon: Icons.bolt_outlined,
                                    label: 'Power',
                                    index: index,
                                  ),
                                ),
                              );
                            },
                          ),
                          const SizedBox(height: 10),
                          SmoothPageIndicator(
                            controller: _carouselController,
                            count: 5,
                            effect: SwapEffect(
                              dotColor: Colors.grey.shade300,
                              activeDotColor: Colors.blue.shade300,
                              dotHeight: 12,
                              dotWidth: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Riwayat Point :",
                        style: semiBoldText16.copyWith(color: primaryColor3),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
