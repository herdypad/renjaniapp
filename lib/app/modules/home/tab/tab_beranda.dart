// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:renjani/app/modules/home/componet/home_item_header.dart';
import 'package:renjani/themes.dart';

import '../controllers/beranda_controller.dart';

class TabBeranda extends GetView<BerandaController> {
  const TabBeranda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List cards = [
      home_item_header(
          urlImage:
              "https://i0.wp.com/koranbanjar.net/wp-content/uploads/2021/05/INFO-PAJAK.jpg?fit=500%2C363&ssl=1"),
      home_item_header(
          urlImage:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOQmMvUr4Nxc7qtdLD1stHRy_omKbMw0virQ&usqp=CAU"),
      home_item_header(
          urlImage:
              "https://i0.wp.com/koranbanjar.net/wp-content/uploads/2021/05/INFO-PAJAK.jpg?fit=500%2C363&ssl=1"),
      home_item_header(
          urlImage:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOQmMvUr4Nxc7qtdLD1stHRy_omKbMw0virQ&usqp=CAU"),
    ];
    int currentIndex = 1;
    Widget indicator(int index) {
      return Container(
        width: currentIndex == index ? 20.w : 5.w,
        height: 10.h,
        margin: EdgeInsets.symmetric(horizontal: 2),
        decoration: BoxDecoration(
            color: currentIndex == index
                ? primaryColor1
                : primaryColor1.withOpacity(0.7),
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
                currentIndex = index;
              },
            ),
          ),
        ],
      );
    }

    Column item_title(title, select) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: mediumText14.copyWith(
                color: select == 0 ? primaryColor2 : primaryColor3),
          ),
          Container(
            width: select == 0 ? 70 : 0,
            height: 5,
            decoration: BoxDecoration(
              color: primaryColor1,
              borderRadius: BorderRadius.circular(9),
            ),
          )
        ],
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              cardInfo(),
              SizedBox(height: 17.h),
              Center(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    indicator(1),
                    indicator(0),
                    indicator(0),
                  ])),
            ],
          ),
        ),
      ),
    );
  }
}
