import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CardApp extends StatelessWidget {
  const CardApp({
    Key? key,
    this.margin,
    this.padding,
    this.radius,
    this.width,
    this.height,
    this.child,
    this.color,
    this.outlineColor,
    this.borderWidth,
    this.isOutlined = false,
    this.decoration,
    this.constraints,
    this.isShowShadows = false,
    this.shadows,
  }) : super(key: key);

  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final double? radius;
  final double? width;
  final double? height;
  final Widget? child;
  final Color? color;
  final Color? outlineColor;
  final double? borderWidth;
  final bool isOutlined;
  final BoxDecoration? decoration;
  final BoxConstraints? constraints;
  final bool isShowShadows;
  final List<BoxShadow>? shadows;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? Get.width,
      height: height,
      margin: margin ?? EdgeInsets.zero,
      padding: padding ?? const EdgeInsets.all(12),
      constraints: constraints ?? BoxConstraints(minHeight: 48.w),
      decoration: decoration ??
          (isOutlined
              ? BoxDecoration(
                  color: color ?? Colors.white,
                  borderRadius: BorderRadius.circular(radius ?? 12),
                  border: Border.all(
                    color: outlineColor ?? Colors.grey,
                    width: borderWidth ?? 1,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xff333333).withOpacity(.15),
                      blurRadius: 3,
                      offset: const Offset(0, 1),
                    ),
                  ],
                )
              : BoxDecoration(
                  color: color ?? Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade50,
                      ),
                    ])),
      child: child,
    );
  }
}
