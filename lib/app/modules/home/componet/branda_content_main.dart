// ignore_for_file: unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:renjani/app/modules/home/componet/item_card_small.dart';
import 'package:renjani/app/routes/app_pages.dart';

import '../../../../themes.dart';

import '../controllers/beranda_controller.dart';
import 'item_card_large.dart';

class BerandaContentMain extends GetView<BerandaController> {
  const BerandaContentMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Column itemTitle(title, select) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: mediumText14.copyWith(
                color: select == 0 ? primaryColor1 : primaryColor2),
          ),
          Container(
            width: 70,
            height: 5,
            decoration: BoxDecoration(
              color:
                  select == 0 ? primaryColor1 : primaryColor1.withOpacity(0.0),
              borderRadius: BorderRadius.circular(9),
            ),
          )
        ],
      );
    }

    Row itemEvent() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
              onTap: () {
                // Get.toNamed(Routes.DETAIL_EVENT);
              },
              child: item_card_large()),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                  onTap: () {
                    // Get.toNamed(Routes.DETAIL_EVENT);
                  },
                  child: item_card_small()),
              SizedBox(
                height: 10.h,
              ),
              item_card_small(),
            ],
          )
        ],
      );
    }

    Row itemBerita() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              item_card_small(),
              SizedBox(
                height: 10.h,
              ),
              item_card_small(),
            ],
          ),
          item_card_large(),
        ],
      );
    }

    return Obx(() {
      return Column(
        children: [
          SizedBox(height: 15.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  controller.statusEventBerita(0);
                },
                child: itemTitle(
                    "Event", controller.statusEventBerita.value == 0 ? 0 : 1),
              ),
              SizedBox(width: 40.w),
              InkWell(
                onTap: () {
                  controller.statusEventBerita(1);
                },
                child: itemTitle(
                    "Berita", controller.statusEventBerita.value == 1 ? 0 : 1),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  Get.toNamed(Routes.EVENT);
                },
                child: Text("See all ",
                    style: mediumText10.copyWith(color: primaryColor2)),
              ),
              const Icon(
                Icons.navigate_next,
                size: 15.0,
              ),
            ],
          ),
          SizedBox(height: 9.h),
          controller.statusEventBerita == 0 ? itemBerita() : itemEvent(),
        ],
      );
    });
  }
}
