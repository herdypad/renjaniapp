import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:renjani/app/modules/home/controllers/home_controller.dart';
import 'package:renjani/app/modules/home/model/event_terbaru_m.dart';
import 'package:renjani/utils/app_utils.dart';

import '../../../../themes.dart';

class item_card_large extends StatelessWidget {
  const item_card_large({
    super.key,
    this.judul,
    this.tgl,
    this.urlIgm,
  });

  final String? judul;
  final String? tgl;
  final String? urlIgm;

  @override
  Widget build(BuildContext context) {
    final cHome = Get.find<HomeController>();

    AssetImage localImage = const AssetImage('assets/images/tes1.jpg');
    return Row(
      children: [
        Container(
          width: 165.w,
          height: 243.h,
          decoration: BoxDecoration(
              image: DecorationImage(
                  onError: (exception, stackTrace) {
                    Image.asset(
                      "assets/images/tes1.jpg",
                      fit: BoxFit.cover,
                    );
                  },
                  image: NetworkImage(urlIgm ??
                      "https://ortax.org/wp-content/uploads/2022/07/Untitled-2-1024x576.jpg"),
                  fit: BoxFit.cover),
              color: primaryColor1,
              boxShadow: Shadows.universal,
              borderRadius: BorderRadius.circular(11)),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: Get.width,
                  color: Colors.black.withOpacity(0.5),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          tgl ?? "",
                          style: mediumText9.copyWith(
                              color: kWhite.withOpacity(0.6)),
                        ),
                        Text(
                          judul ?? "",
                          style: mediumText12.copyWith(
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
                          style: mediumText12.copyWith(color: primaryColor1),
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
