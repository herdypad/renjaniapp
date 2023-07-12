import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../cards/card_app.dart';

class ShimmerIndicator extends StatelessWidget {
  const ShimmerIndicator({
    required this.width,
    required this.height,
    this.borderRadius = 0,
    super.key,
  });

  final double width;
  final double height;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: const Color.fromRGBO(189, 189, 189, 1),
        highlightColor: const Color.fromRGBO(224, 224, 224, 1),
        child: CardApp(
          margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
          radius: borderRadius,
          width: width,
          height: height,
          constraints: BoxConstraints(minHeight: height),
          color: Colors.grey,
        ));
  }
}
