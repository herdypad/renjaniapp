import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home_item_header extends StatelessWidget {
  const home_item_header({
    super.key,
    required this.urlImage,
  });

  final String urlImage;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 168,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(urlImage), fit: BoxFit.fitWidth),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 9),
            ],
          ),
        ));
  }
}
