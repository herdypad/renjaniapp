import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../themes.dart';

class BerandaFooter extends StatelessWidget {
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
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          controller: ScrollController(),
          child: Row(
            children: [
              Item_list_footer(),
              Item_list_footer(),
            ],
          ),
        )
      ],
    );
  }

  Padding Item_list_footer() {
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
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOQmMvUr4Nxc7qtdLD1stHRy_omKbMw0virQ&usqp=CAU"),
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
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Romadhon event",
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
