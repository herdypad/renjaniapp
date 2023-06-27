import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../../themes.dart';
import '../buttons/button_primary.dart';

showPopUpInfo({
  String? title,
  String? description,
  String? labelButton,
  Function()? onPress,
}) {
  Get.dialog(
    Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Container(
        padding: EdgeInsets.fromLTRB(20.w.w, 20.w, 20.w, 4.w),
        decoration:
            BoxDecoration(borderRadius: Corners.smBorder, color: Colors.white),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title ?? '',
              style: mediumText12,
              textAlign: TextAlign.center,
            ),
            verticalSpace(Insets.med),
            Text(
              description ?? '',
              style: mediumText11,
              textAlign: TextAlign.center,
            ),
            verticalSpace(Insets.xl),
            ButtonPrimary(
              onTap: onPress ?? Get.back,
              label: labelButton ?? 'OK',
              color: primaryColor1,
              textStyle:
                  mediumText10.copyWith(fontSize: 14.w, color: Colors.white),
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    ),
    barrierDismissible: false,
  );
}

showPopUpConfirmation({
  String? title,
  String? description,
  String? labelButtonPostive,
  String? labelButtonNegative,
  Function()? onPressPositive,
  Function()? onPressNegative,
}) {
  Get.dialog(
    Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Container(
        padding: EdgeInsets.fromLTRB(20.w.w, 20.w, 20.w, 4.w),
        decoration:
            BoxDecoration(borderRadius: Corners.smBorder, color: Colors.white),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title ?? '',
              style: mediumText10.copyWith(fontSize: 14.w),
              textAlign: TextAlign.center,
            ),
            verticalSpace(Insets.med),
            Text(
              description ?? '',
              style: mediumText12,
              textAlign: TextAlign.center,
            ),
            verticalSpace(Insets.xl),
            Row(
              children: [
                Expanded(
                  child: ButtonPrimary(
                    height: 35.w,
                    onTap: onPressNegative ?? Get.back,
                    label: labelButtonNegative ?? 'CANCEL',
                    textStyle: mediumText11.copyWith(
                      fontSize: 14.w,
                      color: primaryColor1,
                    ),
                    color: Colors.transparent,
                    isOutline: true,
                    outlineColor: primaryColor1,
                  ),
                ),
                horizontalSpace(Insets.sm),
                Expanded(
                  child: ButtonPrimary(
                    height: 35.w,
                    color: primaryColor1,
                    textStyle: mediumText11.copyWith(
                        fontSize: 14.w, color: Colors.white),
                    onTap: onPressPositive ?? Get.back,
                    label: labelButtonPostive ?? 'YES',
                  ),
                )
              ],
            ),
            SizedBox(height: 20.w),
          ],
        ),
      ),
    ),
    barrierDismissible: false,
  );
}

class TextStyles {}

showToast({
  required String message,
  Color? color,
  Color? textColor,
  ToastGravity? gravity,
}) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: gravity ?? ToastGravity.BOTTOM,
    backgroundColor: color ?? Colors.red,
    textColor: textColor ?? Colors.white,
    fontSize: 14.w,
  );
}
