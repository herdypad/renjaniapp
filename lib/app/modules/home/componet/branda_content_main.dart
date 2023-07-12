import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:renjani/app/modules/home/componet/item_card_small.dart';
import 'package:renjani/app/modules/home/model/berita_terbaru_m.dart';
import 'package:renjani/app/modules/home/model/event_terbaru_m.dart';
import 'package:renjani/app/routes/app_pages.dart';
import 'package:renjani/constants/constant.dart';

import '../../../../themes.dart';

import '../../../../widgets/others/shimmer_indicator.dart';
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

    ShimmerIndicator shimerSmall() {
      return ShimmerIndicator(
        width: 165.w,
        height: 117.h,
        borderRadius: Insets.med,
      );
    }

    ShimmerIndicator shimerLarge() {
      return ShimmerIndicator(
        width: 165.w,
        height: 243.h,
        borderRadius: Insets.med,
      );
    }

    Row itemEvent(List<EventTerbaruM> data) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
              onTap: () {
                Get.toNamed(Routes.DETAILEVENT, arguments: data[0]);
              },
              child: controller.isLoadEvent.isFalse &&
                      controller.listEventTerbaru.isNotEmpty
                  ? item_card_large(
                      urlIgm:
                          "${BASE_URL}api/v1/landingpages/files/image/${data[0].urlImage}",
                      judul: "${data[0].judul}",
                      tgl: "${data[0].tglEvent}",
                    )
                  : shimerLarge()),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                  onTap: () {
                    Get.toNamed(Routes.DETAILEVENT, arguments: data[0]);
                  },
                  child: controller.isLoadEvent.isFalse &&
                          controller.listEventTerbaru.length > 1
                      ? item_card_small(
                          urlIgm:
                              "${BASE_URL}api/v1/landingpages/files/image/${data[1].urlImage}",
                          judul: "${data[2].judul}",
                          tgl: "${data[2].tglEvent}",
                        )
                      : shimerSmall()),
              SizedBox(
                height: 10.h,
              ),
              controller.isLoadEvent.isFalse &&
                      controller.listEventTerbaru.length > 2
                  ? InkWell(
                      onTap: () {
                        Get.toNamed(Routes.DETAILEVENT, arguments: data[0]);
                      },
                      child: item_card_small(
                        urlIgm:
                            "${BASE_URL}api/v1/landingpages/files/image/${data[2].urlImage}",
                        judul: "${data[2].judul}",
                        tgl: "${data[2].tglEvent}",
                      ),
                    )
                  : shimerSmall()
            ],
          )
        ],
      );
    }

    Row itemBerita(List<BeritaTerbaruM> data) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              controller.isLoadBerita.isFalse &&
                      controller.listBeritaTerbaru.length > 1
                  ? InkWell(
                      onTap: () {
                        Get.toNamed(Routes.DETAILBERITA, arguments: data[0]);
                      },
                      child: item_card_small(
                        urlIgm:
                            "${BASE_URL}api/v1/landingpages/files/image/${data[0].urlImage}",
                        judul: "${data[0].judul}",
                      ),
                    )
                  : shimerSmall(),
              SizedBox(
                height: 10.h,
              ),
              controller.isLoadBerita.isFalse &&
                      controller.listBeritaTerbaru.length > 1
                  ? InkWell(
                      onTap: () {
                        Get.toNamed(Routes.DETAILBERITA, arguments: data[1]);
                      },
                      child: item_card_small(
                        urlIgm:
                            "${BASE_URL}api/v1/landingpages/files/image/${data[1].urlImage}",
                        judul: "${data[1].judul}",
                      ),
                    )
                  : shimerSmall()
            ],
          ),
          controller.isLoadBerita.isFalse &&
                  controller.listBeritaTerbaru.length > 2
              ? InkWell(
                  onTap: () {
                    Get.toNamed(Routes.DETAILBERITA, arguments: data[2]);
                  },
                  child: item_card_large(
                    urlIgm:
                        "${BASE_URL}api/v1/landingpages/files/image/${data[2].urlImage}",
                    judul: "${data[2].judul}",
                  ),
                )
              : shimerLarge()
        ],
      );
    }

    return Obx(() {
      return Column(
        children: [
          // Text(controller.listEventTerbaru[0].idEvent.toString()),
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
                  controller.statusEventBerita == 1
                      ? Get.offNamed(Routes.BERITA)
                      : Get.offNamed(Routes.EVENT);
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

          controller.statusEventBerita == 1
              ? itemBerita(controller.listBeritaTerbaru)
              : itemEvent(controller.listEventTerbaru),
        ],
      );
    });
  }
}
