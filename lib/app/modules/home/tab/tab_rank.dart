// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:renjani/app/modules/home/controllers/rank_controller.dart';

import '../../../../themes.dart';

class TabRank extends GetView<RankController> {
  const TabRank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
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
              SizedBox(height: 42.h),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RankItem(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RankItem(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RankItem(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RankItem(),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: InkWell(
                  onTap: () {},
                  child: Ink(
                    height: 54.h,
                    decoration: BoxDecoration(
                      color: btnPrimary,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                        child: Text("Load More",
                            style: mediumText14.copyWith(
                                fontSize: 14.sp,
                                color: primaryColor1.withOpacity(0.5)))),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RankItem extends StatelessWidget {
  const RankItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: primaryColor1,
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
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Abang Mesi",
                      style:
                          mediumText14.copyWith(fontSize: 12.sp, color: kWhite),
                    ),
                    Container(
                      height: 5.h,
                      color: primaryColor2,
                    ),
                    Text(
                      "A University",
                      style:
                          mediumText14.copyWith(fontSize: 12.sp, color: kWhite),
                    ),
                  ]),
            ),
            SizedBox(width: 10.w),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "#1",
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
