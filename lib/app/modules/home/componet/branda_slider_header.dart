import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../themes.dart';
import 'home_item_header.dart';

class BerandaSliderHeader extends StatelessWidget {
  const BerandaSliderHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List cards = [
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

    Container item(String urlImage) {
      return Container(
          width: MediaQuery.of(context).size.width,
          height: 168,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(urlImage), fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(height: 9),
              ],
            ),
          ));
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

    return Column(
      children: [
        cardInfo(),
        SizedBox(height: 17.h),
        Center(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          indicator(1),
          indicator(0),
          indicator(0),
        ])),
      ],
    );
  }
}
