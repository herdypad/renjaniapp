import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../themes.dart';

import 'package:get/get.dart';
import 'package:renjani/app/modules/pengumuman/views/detail_galeri_view.dart';
import 'package:renjani/app/modules/pengumuman/views/pengumuman_detail.dart';
import 'package:renjani/app/routes/app_pages.dart';

import '../controllers/pengumuman_controller.dart';

class PengumumanViewView extends GetView<PengumumanViewController> {
  const PengumumanViewView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScrollController _scrollController = ScrollController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor1,
        centerTitle: true,
        title: Text('Pengumuman'),
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
                          child: Text(
                              'Daftar Pengumuman yang dipublikasi oleh Kanwil DJP',
                              style: mediumText12,
                              textAlign: TextAlign.center),
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
                              {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => PengumumanDetail(
                                          urlpdf: 'renjani.pdf',
                                          isi:
                                              'Dalam rangka <p> meningkatkan <p> kesadaran pajak generasi muda sekaligus memperingati Hari Kemerdekaan Republik Indonesia ke-77, Direktorat Jenderal Pajak mengadakan kegiatan Lomba Tutur Pajak 2022: Story Telling dengan tema “Muda Berkreasi Membangun Negeri” yang merupakan salah satu rangkaian kegiatan Pajak Bertutur 2022. Kegiatan ini terdiri dari tiga kategori yaitu kategori sekolah dasar (SD) dan sederajat, kategori sekolah menengah pertama (SMP) dan sederajat, dan kategori sekolah menengah atas (SMA) dan sederajat yang dapat diikuti oleh seluruh siswa se-Indonesia. Kegiatan ini merupakan bagian dari program Inklusi Kesadaran Pajak yang merupakan bagian dari sasaran strategis pengembangan layanan edukasi yang tertuang dalam Keputusan Direktur Jenderal Pajak Nomor KEP-389/PJ/2020 tentang Rencana Strategis Direktorat Jenderal Pajak Tahun 2020—2024 dan Keputusan Direktur Jenderal Pajak Nomor KEP- 62/PJ/PJ.09/2020 tentang Rencana Strategis Direktorat Penyuluhan, Pelayanan, dan Hubungan Masyarakat Tahun 2020—2024.',
                                          judul:
                                              'Daftar Alokasi Relawan Pajak Kanwil DJP Jakarta Selatan II Tahun 2023',
                                        )));
                              }
                            },
                            child: Container(
                              //padding: EdgeInsets.all(12.0),
                              height: 150.h,
                              width: 310.w,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Center(
                                      child: Text(
                                        'Rabu, 18 Januari 2023 09:30',
                                        style: semiBoldText12.copyWith(
                                            color: primaryColor3),
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    color: primaryColor3,
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 30),
                                    child: Center(
                                      child: Text(
                                          'Daftar Alokasi Relawan Pajak Kanwil DJP Jakarta Selatan II Tahun 2023',
                                          style: mediumText12,
                                          textAlign: TextAlign.center),
                                    ),
                                  ),
                                ],
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
