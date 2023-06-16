import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../themes.dart';

class item_card_small extends StatelessWidget {
  const item_card_small({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 165.w,
          height: 117.h,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://ortax.org/wp-content/uploads/2022/07/Untitled-2-1024x576.jpg"),
                  fit: BoxFit.cover),
              color: primaryColor1,
              borderRadius: BorderRadius.circular(11)),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: Get.width,
                  color: Colors.black.withOpacity(0.5),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "13 November 2020 ",
                          style: mediumText11.copyWith(
                              fontSize: 9.sp, color: kWhite.withOpacity(0.6)),
                        ),
                        Text(
                          "Hari Pajak",
                          style: mediumText9.copyWith(
                              color: kWhite.withOpacity(0.6)),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: kWhite,
                  width: Get.width,
                  height: 34,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Baca Selengkapnya",
                          style: mediumText9.copyWith(color: primaryColor1),
                        ),
                        Container(
                          height: 18,
                          width: 18,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                scale: 0.1,
                                image: AssetImage(
                                    'assets/icons/ic_arrow_forward__round.png'),
                              ),
                              color: primaryColor1,
                              borderRadius: BorderRadius.circular(4)),
                        ),
                      ]),
                ),
              ]),
        )
      ],
    );
  }
}
