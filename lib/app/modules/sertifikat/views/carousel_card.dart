import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:renjani/themes.dart';
// import 'package:flutter_application_1/cubit/carousel_cubit.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

class CarouselCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final int index;

  const CarouselCard({
    Key? key,
    required this.icon,
    required this.label,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // bool isSelected = context.select(
    //   (CarouselCubit c) => c.state.selectedCardIndex == index,
    // );

    return Center(
      child: Card(
        // clipBehavior is necessary because, without it, the InkWell's animation
        // will extend beyond the rounded edges of the [Card] (see https://github.com/flutter/flutter/issues/109776)
        // This comes with a small performance cost, and you should not set [clipBehavior]
        // unless you need it.
        clipBehavior: Clip.hardEdge,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kBorderRadius)),
        elevation: 3,
        child: Container(
          //padding: EdgeInsets.all(12.0),
          height: 150.h,
          width: 400.w,
          child: Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      FontAwesomeIcons.medal,
                      size: 20.0,
                      color: Colors.yellow,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      'Bronze',
                      style: semiBoldText16.copyWith(color: primaryColor3),
                    )
                  ],
                ),
              ),
              Divider(
                color: primaryColor3,
              ),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text('Selamat Anda Mendapat Sertifikat Bronze',
                    style: mediumText12, textAlign: TextAlign.left),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor2,
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(64.0),
                  ),
                ),
                onPressed: () {},
                child: Text("Donwload Sertifikat"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
