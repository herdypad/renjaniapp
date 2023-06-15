import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../themes.dart';
import '../controllers/pengumuman_controller.dart';

class DetailMasjidView extends GetView<PengumumanViewController> {
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
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30)),
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://flazztax.com/wp-content/uploads/2021/08/Wajib-Pajak-Harus-Tahu-Pengelompokan-Jenis-Pajak-di-Indonesia-1200x675.jpg'),
                      fit: BoxFit.fill),
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
                    'Lomba Tutur Pajak 2022 “Muda Berkeasi Membangun Negeri”',
                    style: semiBoldText16,
                  ),

                  SizedBox(height: 9.h),
                  Text(
                    "Grilya adalah website jual beli baju dan aksesoris untuk perempuan yang di design dengan konsep modern dan juga elgant. terdepat banyak fiture yang di sediakan di grilya.co dengan mempermudah anda untuk berjualan fashion  yang trendy Load more",
                    style: mediumText11.copyWith(
                        color: primaryColor2.withOpacity(0.4)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: kWhite,
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
                              Text(
                                " juknis.pdf",
                                style: mediumText12.copyWith(
                                    fontSize: 10, color: primaryColor3),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: kWhite,
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 10),
                          child: Row(
                            children: [
                              Icon(
                                Icons.call,
                                size: 16.0,
                                color: primaryColor3,
                              ),
                              Text(
                                " 60897876654",
                                style: mediumText12.copyWith(
                                    fontSize: 10, color: primaryColor3),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 9.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      button1("Facilities", 1),
                      button1("Weekly event", 0),
                      button1("Jadwal imam", 0),
                    ],
                  ),
                  SizedBox(height: 15.h),
                  //fasilitas

                  SizedBox(height: 15.h),
                  //recent
                  Text(
                    "Recent mosque",
                    style: mediumText14.copyWith(color: primaryColor2),
                  ),
                  SizedBox(height: 15.h),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    controller: ScrollController(),
                    child: Row(
                      children: [
                        Container(
                          width: 128,
                          height: 137,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            image: DecorationImage(
                                image: AssetImage('assets/images/home0.png'),
                                fit: BoxFit.cover),
                            color: primaryColor1,
                          ),
                        ),
                        SizedBox(width: 11),
                        Container(
                          width: 128,
                          height: 137,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            image: DecorationImage(
                                image: AssetImage('assets/images/home7.png'),
                                fit: BoxFit.cover),
                            color: primaryColor1,
                          ),
                        ),
                        SizedBox(width: 11),
                        Container(
                          width: 128,
                          height: 137,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            image: DecorationImage(
                                image: AssetImage('assets/images/home4.png'),
                                fit: BoxFit.cover),
                            color: primaryColor1,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column title_1(title, icon) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.asset(
              icon,
              width: 19.0,
              height: 19.0,
              fit: BoxFit.fill,
            ),
            SizedBox(width: 5),
            Text(
              title,
              style: mediumText9.copyWith(color: primaryColor2),
            ),
          ],
        )
      ],
    );
  }

  Container button1(title, status) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: primaryColor2, //color of border
          width: 1, //width of border
        ),
        borderRadius: BorderRadius.circular(9),
        color: status == 1 ? primaryColor2 : kWhite,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 7),
        child: Text(
          title,
          style: mediumText12.copyWith(
            fontSize: 10,
            color: status != 1 ? primaryColor2 : kWhite,
          ),
        ),
      ),
    );
  }
}
