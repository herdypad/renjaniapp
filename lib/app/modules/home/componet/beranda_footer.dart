import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../constants/constant.dart';
import '../../../../themes.dart';
import '../../../../widgets/others/shimmer_indicator.dart';
import '../controllers/beranda_controller.dart';

class BerandaFooter extends GetView<BerandaController> {
  const BerandaFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Galeri",
                style: semiBoldText14.copyWith(color: primaryColor1)),
            SizedBox(height: 20.h),
            // Row(
            //   children: [
            //     Text("See all ",
            //         style: mediumText10.copyWith(
            //             color: primaryColor1.withOpacity(0.5))),
            //     const Icon(
            //       Icons.navigate_next,
            //       size: 15.0,
            //     ),
            //   ],
            // ),
          ],
        ),
        controller.isLoadGalery.isFalse
            ? SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                controller: ScrollController(),
                child: Row(
                  children: List.generate(
                    controller.listGeleryTerbaru.length,
                    (index) {
                      var item = {};
                      bool selected = index == 0;

                      var data = controller.listGeleryTerbaru[index];

                      return Item_list_footer(
                          data.urlImage.toString(), data.judul.toString());
                    },
                  ),
                ),
              )
            : ShimmerIndicator(
                height: 150.h,
                width: 237.w,
                borderRadius: Insets.med,
              )
      ],
    );
  }

  Padding Item_list_footer(urlImge, judul) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Container(
        height: 150.h,
        width: 237.w,
        decoration: BoxDecoration(
          color: kWhite,
          borderRadius: BorderRadius.circular(6),
          image: DecorationImage(
              image: NetworkImage(
                  "${BASE_URL}api/v1/landingpages/files/image/$urlImge"),
              fit: BoxFit.fill),
        ),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  color: Colors.black.withOpacity(0.5),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "$judul",
                      style:
                          mediumText11.copyWith(fontSize: 11.sp, color: kWhite),
                    ),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
