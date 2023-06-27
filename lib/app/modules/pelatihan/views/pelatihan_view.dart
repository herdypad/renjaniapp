import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../themes.dart';

import 'package:get/get.dart';

import '../controllers/pelatihan_controller.dart';

class PelatihanView extends GetView<PelatihanController> {
  const PelatihanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final ScrollController _scrollController = ScrollController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor1,
        centerTitle: true,
        title: Text('Pelatihan'),
      ),
      body: SafeArea(
        child: Scrollbar(
          controller: _scrollController,
          child: SingleChildScrollView(
            controller: _scrollController,
            child: Container(
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(15, 25, 15, 25),
                        child: Center(
                          child: Text('Top 5 Pelatihan Untuk Anda',
                              style: mediumText12, textAlign: TextAlign.center),
                        ),
                      ),
                      Center(
                        child: Card(
                          // clipBehavior is necessary because, without it, the InkWell's animation
                          // will extend beyond the rounded edges of the [Card] (see https://github.com/flutter/flutter/issues/109776)
                          // This comes with a small performance cost, and you should not set [clipBehavior]
                          // unless you need it.
                          clipBehavior: Clip.hardEdge,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(kBorderRadius)),
                          elevation: 3,
                          child: InkWell(
                            splashColor: primaryColor2,
                            onTap: () {
                              {}
                            },
                            child: Container(
                              padding: EdgeInsets.all(5.0),
                              // height: 98.h,
                              // width: 400.w,
                              child: Padding(
                                padding: EdgeInsets.all(2.0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        //tanggal--------------------------
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: 2.h,
                                            ),
                                            //tanggal
                                            Padding(
                                              // padding: const EdgeInsets.fromLTRB(4, 0, 0, 0),
                                              padding: EdgeInsets.all(2.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Icon(
                                                    CupertinoIcons.calendar,
                                                    color: primaryColor3,
                                                  ),
                                                  SizedBox(
                                                    width: 5.w,
                                                  ),
                                                  Text(
                                                    '28 April 2023',
                                                    style: mediumText10,
                                                  ),
                                                  Text(
                                                    ' - ',
                                                    style: mediumText10,
                                                  ),
                                                  Text(
                                                    '29 April 2023',
                                                    style: mediumText10,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),

                                        //skor poin--------------------
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: [
                                              Icon(
                                                CupertinoIcons.wifi,
                                                color: primaryColor2,
                                              ),
                                              SizedBox(
                                                width: 2.w,
                                              ),
                                              Text(
                                                '8',
                                                style: mediumText12,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Text(
                                          'Pelatihan Dasar Pengisian SPT Tahunan Melalui DJPOnline',
                                          style: semiBoldText12,
                                          textAlign: TextAlign.center),
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: primaryColor2,
                                        shape: ContinuousRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(64.0),
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: Text("Menuju Pelatihan"),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
