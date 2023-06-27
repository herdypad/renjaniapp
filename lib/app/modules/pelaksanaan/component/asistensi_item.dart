import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../themes.dart';

class asistensi_item extends StatelessWidget {
  const asistensi_item({
    super.key,
    required this.point,
    required this.title,
    required this.tgl,
    required this.status,
  });

  final String point;
  final String title;
  final String tgl;
  final String status;

  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      'Kirim',
      'Edit',
      'Hapus',
    ];
    String? selectedValue;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(children: [
        Container(
          height: 70,
          decoration: BoxDecoration(
            color: kWhite,
            boxShadow: Shadows.universal,
            borderRadius: BorderRadius.circular(6),
          ),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: [
                SizedBox(width: 5.w),
                ImageIcon(
                  AssetImage(
                    "assets/icons/ic_point.png",
                  ),
                  color: primaryColor2,
                  size: 24.0,
                ),
                SizedBox(width: 5.w),
                Text(
                  "$point",
                  style: mediumText14.copyWith(
                      fontSize: 14.sp, color: primaryColor2),
                ),
                SizedBox(width: 20.w),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title.length > 27 ? title.substring(0, 27) + ".." : title,
                    style: semiBoldText12.copyWith(
                        fontSize: 12.sp, color: primaryColor1),
                  ),
                  Text(
                    "$tgl",
                    style: mediumText14.copyWith(
                        fontSize: 11.sp, color: primaryColor1),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Stack(children: [
                  DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      dropdownStyleData: DropdownStyleData(
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: primaryColor2,
                        ),
                        elevation: 8,
                        offset: const Offset(0, 8),
                      ),
                      iconStyleData: const IconStyleData(
                        icon: Icon(
                          Icons.more_vert,
                          size: 24.0,
                        ),
                      ),
                      hint: Text(
                        "$status",
                        style: mediumText14.copyWith(
                            fontSize: 14.sp, color: primaryColor2),
                      ),
                      items: items
                          .map((item) => DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: mediumText14.copyWith(
                                      fontSize: 10.sp, color: primaryColor1),
                                ),
                              ))
                          .toList(),
                      value: selectedValue,
                      onChanged: (value) {
                        selectedValue = value as String;
                      },
                      // buttonStyleData: const ButtonStyleData(
                      //   height: 40,
                      //   width: 140,
                      // ),
                      menuItemStyleData: const MenuItemStyleData(
                        height: 40,
                      ),
                    ),
                  ),
                ]),
              ],
            )
          ]),
        ),
      ]),
    );
  }
}
