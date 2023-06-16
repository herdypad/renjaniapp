import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:renjani/utils/image_helper.dart';

import '../../../../themes.dart';

class DetailEvent extends StatefulWidget {
  final String urlpdf;
  final String judul;
  final String isi;
  final String tanggal;
  final String nohp;
  final String imageurl;
  const DetailEvent({
    required this.urlpdf,
    required this.judul,
    required this.isi,
    required this.tanggal,
    required this.nohp,
    required this.imageurl,
  });

  @override
  State<DetailEvent> createState() => _DetailEventState();
}

class _DetailEventState extends State<DetailEvent> {
  // const DetailMasjidView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0.h,
        backgroundColor: Colors.transparent,
        shadowColor: kBg,
        elevation: 0,
        iconTheme: IconThemeData(color: primaryColor2),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        controller: ScrollController(),
        child: Column(
          children: [
            Stack(children: [
              Container(
                height: 329.h,
                width: Get.width,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30)),
                  child: Container(
                    height: 120.h,
                    width: MediaQuery.of(context).size.width,
                    child: FadeInImage.assetNetwork(
                      placeholder: ImageHelper.placeholder(context),
                      image: widget.imageurl,
                      fit: BoxFit.cover,
                      imageErrorBuilder: (c, o, s) => Image.asset(
                          ImageHelper.placeholder(context),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Icon(
                        Icons.arrow_back,
                        size: 24.0,
                      ),
                    ),
                  ),
                ],
              ),
            ]),
            SizedBox(height: 23.h),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.judul,
                    style: semiBoldText16,
                  ),
                  SizedBox(height: 9.h),
                  Row(
                    children: [
                      Icon(
                        Icons.calendar_month,
                        color: primaryColor3,
                        size: 15,
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                      Text(
                        widget.tanggal,
                        style: mediumText9.copyWith(color: primaryColor3),
                      ),
                    ],
                  ),
                  SizedBox(height: 9.h),
                  Row(
                    children: [
                      Flexible(
                        child: HtmlWidget(
                          widget.isi,
                          key: Key("ANNOUNCEMENT"),
                          textStyle: mediumText11,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 9.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(kBorderRadius),
                          color: appGrey1,
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 10),
                          child: Row(
                            children: [
                              Icon(
                                Icons.picture_as_pdf,
                                size: 16.0,
                                color: primaryColor3,
                              ),
                              SizedBox(width: 5),
                              Text(
                                widget.urlpdf,
                                style: mediumText12.copyWith(
                                    fontSize: 10, color: primaryColor3),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(kBorderRadius),
                          color: appGrey1,
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 10),
                          child: Row(
                            children: [
                              Icon(
                                Icons.phone,
                                size: 16.0,
                                color: primaryColor3,
                              ),
                              SizedBox(width: 5),
                              Text(
                                widget.nohp,
                                style: mediumText12.copyWith(
                                    fontSize: 10, color: primaryColor3),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.calendar_month,
                                  color: primaryColor3,
                                ),
                                SizedBox(width: 2),
                                Text(
                                  'Tanggal Pelaksanaan :',
                                  style: semiBoldText12.copyWith(
                                      color: primaryColor3),
                                ),
                              ],
                            ),
                            Text(
                              '30 November 2022, 07:00 WIB',
                              style: mediumText9.copyWith(color: primaryColor3),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 100),
                      Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Share on',
                                  style: semiBoldText12.copyWith(
                                      color: primaryColor3),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  FontAwesomeIcons.whatsapp,
                                  color: Colors.green,
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  FontAwesomeIcons.twitter,
                                  color: Colors.blue,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
