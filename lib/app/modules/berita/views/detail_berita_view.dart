import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:renjani/app/modules/berita/controllers/berita_controller.dart';

import '../../../../themes.dart';

class DetailBeritaView extends GetView<BeritaController> {
  const DetailBeritaView({Key? key}) : super(key: key);
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
                        'Rabu 30 September 2022',
                        style: mediumText9.copyWith(color: primaryColor3),
                      ),
                    ],
                  ),
                  SizedBox(height: 9.h),
                  Row(
                    children: [
                      Flexible(
                        child: HtmlWidget(
                          '(Selasa, 21/3) Kanwil DJP Jakarta Selatan II mengukuhkan 74 Relawan Pajak yang terdiri dari 68 Relawan Pajak Mahasiswa dan 6 Relawan Pajak Non-Mahasiswa dari kalangan konsultan pajak (IKPI Jakarta Selatan). Pengukuhan ini dilakukan di Aula Edisi 35 Kanwil DJP Jakarta Selatan II, yang sebelumnya diawali dengan pembekalan kepada Relawan Pajak berupa Communication Skills, Pembuatan Konten Pajak, serta Materi Gratifikasi dan Anti-Korupsi.Yeheskiel Minggus Tiranda, Kabid PEP mewakili Kabid P2humas, mengukuhkan Relawan Pajak kepada perwakilan relawan pajak yang telah ditunjuk sebagai koordinator dari masing-masing KPP Pratama serta satu perwakilan dari relawan pajak non-mahasiswa. Pengukuhan ini ditandai dengan pemakaian jaket dan lanyard. Dalam pesannya, Yeheskiel menyampaikan ucapan selamat dan semoga relawan pajak ini dapat memberikan kontribusi dengan turut membantu dalam kegiatan perpajakan.',
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
                                "berita.pdf",
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
