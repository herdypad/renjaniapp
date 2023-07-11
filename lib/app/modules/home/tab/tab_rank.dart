import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';

import 'package:renjani/app/modules/home/controllers/rank_controller.dart';
import 'package:renjani/utils/app_utils.dart';

import '../../../../themes.dart';

class TabRank extends GetView<RankController> {
  const TabRank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        body: Column(
          children: [
            Center(
              child: Column(
                children: [
                  Text(
                    "Peringkat Relawan",
                    style: semiBoldText12.copyWith(
                        fontSize: 24.sp, color: primaryColor1),
                  ),
                  Text(
                    "100 Peringkat Teratas Relawan Pajak",
                    style: mediumText14.copyWith(
                        fontSize: 12.sp, color: primaryColor1),
                  ),
                ],
              ),
            ),
            Flexible(
              child: LazyLoadScrollView(
                onEndOfPage: () {
                  logSys("Load More");
                  controller.loadMore();
                },
                child: ListView.builder(
                  itemCount: controller.lenkList.value,
                  physics: const ScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.all(10),
                      child: RankItem(
                        indexRank: index + 1,
                      ),
                    );
                  },
                ),
              ),
            ),
            controller.isLoad.isTrue
                ? const Center(
                    child: CircularProgressIndicator(
                    backgroundColor: Colors.transparent,
                  ))
                : Container(),
            controller.isLoadMore.isFalse
                ? const Center(child: Text("Tidak Ada Lagi"))
                : Container()
          ],
        ),
      );
    });
  }
}

class RankItem extends StatelessWidget {
  const RankItem({
    super.key,
    required this.indexRank,
  });

  final int indexRank;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // color: primaryColor1,
        border: Border.all(width: 2.w, color: primaryColor1),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Row(children: [
            Container(
              padding: EdgeInsets.all(10.0),
              width: 80.w,
              height: 80.h,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://img.bleacherreport.net/img/images/photos/002/702/917/hi-res-461825537-lionel-messi-of-fc-barcelona-leaves-the-vicente_crop_exact.jpg?w=1200&h=1200&q=75"),
                ),
              ),
            ),
            SizedBox(width: 5),
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Abang Mesi",
                      style: mediumText14.copyWith(
                          fontSize: 12.sp, color: primaryColor1),
                    ),
                    Container(
                      height: 5.h,
                      color: primaryColor2,
                    ),
                    Text(
                      "A University",
                      style: mediumText14.copyWith(
                          fontSize: 12.sp, color: primaryColor1),
                    ),
                  ]),
            ),
            SizedBox(width: 10.w),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "#$indexRank",
                style: semiBoldText14.copyWith(
                    fontSize: 20.sp, color: primaryColor2),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
