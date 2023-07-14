import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:renjani/constants/constant.dart';

import '../../../../themes.dart';
import '../../../../widgets/others/shimmer_indicator.dart';
import '../controllers/beranda_controller.dart';
import 'home_item_header.dart';

class BerandaSliderHeader extends GetView<BerandaController> {
  const BerandaSliderHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget indicator(bool status) {
      return Container(
        width: status ? 20.w : 5.w,
        height: 10.h,
        margin: const EdgeInsets.symmetric(horizontal: 2),
        decoration: BoxDecoration(
            color: status ? primaryColor1 : primaryColor1.withOpacity(0.7),
            borderRadius: BorderRadius.circular(4)),
      );
    }

    Widget cardInfo(List<String> data) {
      int index = -1;
      return Column(
        children: [
          CarouselSlider(
            items: data.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return home_item_header(
                      urlImage:
                          "${BASE_URL}api/v1/landingpages/files/image/$i");
                },
              );
            }).toList(),
            options: CarouselOptions(
              viewportFraction: 1,
              height: 168.h,
              autoPlay: true,
              enableInfiniteScroll: true,
              initialPage: 0,
              onPageChanged: (index, reason) {
                controller.currentIndex.value = index;
                print(controller.currentIndex.value);
              },
            ),
          ),
        ],
      );
    }

    return Obx(() {
      return Column(
        children: [
          controller.isLoadHeader.isFalse
              ? cardInfo(controller.listSliderFoto)
              : ShimmerIndicator(
                  width: Get.width,
                  height: 164.w,
                  borderRadius: Insets.med,
                ),
          SizedBox(height: 17.h),
          Center(
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            indicator(controller.currentIndex.value != 0 ? false : true),
            indicator(controller.currentIndex.value != 1 ? false : true),
            indicator(controller.currentIndex.value != 2 ? false : true),
            indicator(controller.currentIndex.value != 3 ? false : true),
            indicator(controller.currentIndex.value != 4 ? false : true),
          ])),
        ],
      );
    });
  }
}
