import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:renjani/app/modules/event/views/detail_event_view.dart';

import 'package:renjani/app/modules/home/componet/navbar.dart';
import 'package:renjani/themes.dart';
import 'package:renjani/utils/image_helper.dart';

import '../controllers/event_controller.dart';

class EventView extends GetView<EventController> {
  const EventView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();
    final ScrollController _scrollController = ScrollController();

    return Scaffold(
      key: _scaffoldKey,
      drawer: NavBar(),
      drawerEnableOpenDragGesture: true,
      appBar: AppBar(
        backgroundColor: primaryColor1,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/icons/icon_app.png",
              height: 70.0,
              fit: BoxFit.fill,
            ),
          ],
        ),
        leading: GestureDetector(
          onTap: () {
            _scaffoldKey.currentState?.openDrawer();
          },
          child: Icon(
            Icons.menu,
            size: 30,
          ),
        ),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.account_circle,
                  size: 30.0,
                  color: primaryColor2,
                ),
              )),
        ],
      ),
      body: SafeArea(
        child: Scrollbar(
          controller: _scrollController,
          child: SingleChildScrollView(
            controller: _scrollController,
            child: Container(
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 15),
                            hintText: "Cari Judul Event",
                            suffixIcon: const Icon(Icons.search),
                            // prefix: Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(12)),
                                borderSide: BorderSide(
                                  color: appYellow,
                                  width: 2,
                                )),
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                borderSide: BorderSide(
                                  color: primaryColor2,
                                )),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      //card event
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => DetailEvent(
                                    nohp: '08774242714712',
                                    urlpdf: 'event.pdf',
                                    isi:
                                        'Dalam rangka meningkatkan kesadaran pajak generasi muda sekaligus memperingati Hari Kemerdekaan Republik Indonesia ke-77, Direktorat Jenderal Pajak mengadakan kegiatan Lomba Tutur Pajak 2022: Story Telling dengan tema “Muda Berkreasi Membangun Negeri” yang merupakan salah satu rangkaian kegiatan Pajak Bertutur 2022. Kegiatan ini terdiri dari tiga kategori yaitu kategori sekolah dasar (SD) dan sederajat, kategori sekolah menengah pertama (SMP) dan sederajat, dan kategori sekolah menengah atas (SMA) dan sederajat yang dapat diikuti oleh seluruh siswa se-Indonesia.Kegiatan ini merupakan bagian dari program Inklusi Kesadaran Pajak yang merupakan bagian dari sasaran strategis pengembangan layanan edukasi yang tertuang dalam Keputusan Direktur Jenderal Pajak Nomor KEP-389/PJ/2020 tentang Rencana Strategis Direktorat Jenderal Pajak Tahun 2020—2024 dan Keputusan Direktur Jenderal Pajak Nomor KEP- 62/PJ/PJ.09/2020 tentang Rencana Strategis Direktorat Penyuluhan, Pelayanan, dan Hubungan Masyarakat Tahun 2020—2024.Peserta Lomba Tutur Pajak 2022: Story Telling “Muda Berkeasi Membangun Negeri” adalah berikut.Kategori sekolah dasar (SD) dan sederajat dapat diikuti oleh siswa kelas 1 sampai dengan kelas 6 dari sekolah di seluruh Indonesia baik sekolah negeri maupun swasta; Kategori sekolah menengah pertama (SMP) dan sederajat dapat diikuti oleh siswa kelas 7 sampai dengan kelas 9 dari sekolah di seluruh Indonesia baik sekolah negeri maupun swasta; Kategori sekolah menengah atas (SMA) dan sederajat dapat diikuti oleh siswa kelas 10 sampai dengan kelas 12 dari sekolah di seluruh Indonesia baik sekolah negeri maupun swasta;Peserta merupakan individu/perseorangan (bukan kelompok) yang mewakili masing-masing sekolah; Setiap sekolah dapat mengirimkan perwakilan lebih dari satu peserta.',
                                    judul:
                                        'Lomba Tutur Pajak 2022 “Muda Berkeasi Membangun Negeri”',
                                    tanggal: "20 November 2023",
                                    imageurl:
                                        "https://images.squarespace-cdn.com/content/v1/5bd82ac99b8fe8178d5bc6e9/f34e7cf1-a624-47a3-a929-92a5cbd655c4/shutterstock_2079307783.jpg",
                                  )));
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(kBorderRadius)),
                            elevation: 3,
                            child: Container(
                              //padding: EdgeInsets.all(12.0),
                              height: 200.h,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(kBorderRadius),
                                color: kWhite,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius:
                                        BorderRadius.circular(kBorderRadius),
                                    child: Container(
                                      height: 120.h,
                                      width: MediaQuery.of(context).size.width,
                                      child: FadeInImage.assetNetwork(
                                        placeholder:
                                            ImageHelper.placeholder(context),
                                        image:
                                            "https://images.squarespace-cdn.com/content/v1/5bd82ac99b8fe8178d5bc6e9/f34e7cf1-a624-47a3-a929-92a5cbd655c4/shutterstock_2079307783.jpg",
                                        fit: BoxFit.cover,
                                        imageErrorBuilder: (c, o, s) =>
                                            Image.asset(
                                                ImageHelper.placeholder(
                                                    context),
                                                fit: BoxFit.cover),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('13 November 2020 ',
                                            style: semiBoldText12,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis),
                                        Text(
                                          'Lomba Tutur Pajak 2022 “Muda Berkeasi Membangun Negeri” ',
                                          style: mediumText12,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
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
