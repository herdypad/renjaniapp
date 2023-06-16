import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../themes.dart';
import '../controllers/beranda_controller.dart';
import 'home_item_header.dart';

class BerandaSliderHeader extends GetView<BerandaController> {
  const BerandaSliderHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List cards = [
      home_item_header(
          urlImage:
              "https://ddtc-cdn1.sgp1.digitaloceanspaces.com/view/200225035627relawanpajakjakpus.jpg"),
      home_item_header(
          urlImage:
              "https://www.pajak.com/storage/2023/02/relawan-pajak-www.jpg"),
      home_item_header(
          urlImage:
              "https://i0.wp.com/koranbanjar.net/wp-content/uploads/2021/05/INFO-PAJAK.jpg?fit=500%2C363&ssl=1"),
    ];

    Widget indicator(bool status) {
      return Container(
        width: status ? 20.w : 5.w,
        height: 10.h,
        margin: EdgeInsets.symmetric(horizontal: 2),
        decoration: BoxDecoration(
            color: status ? primaryColor1 : primaryColor1.withOpacity(0.7),
            borderRadius: BorderRadius.circular(4)),
      );
    }

    Widget cardInfo() {
      int index = -1;
      return Column(
        children: [
          CarouselSlider(
            items: cards
                .map<Widget>((card) => Container(
                      child: card,
                    ))
                .toList(),
            options: CarouselOptions(
              viewportFraction: 1,
              height: 168.h,
              enableInfiniteScroll: false,
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
          cardInfo(),
          SizedBox(height: 17.h),
          Center(
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            indicator(controller.currentIndex.value != 0 ? false : true),
            indicator(controller.currentIndex.value != 1 ? false : true),
            indicator(controller.currentIndex.value != 2 ? false : true),
          ])),
        ],
      );
    });
  }
}
