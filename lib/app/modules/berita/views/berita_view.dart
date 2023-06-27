import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:renjani/app/modules/berita/views/detail_berita_view.dart';
import 'package:renjani/app/modules/home/componet/navbar.dart';

import 'package:renjani/utils/image_helper.dart';

import '../../../../themes.dart';
import '../controllers/berita_controller.dart';

class BeritaView extends GetView<BeritaController> {
  const BeritaView({Key? key}) : super(key: key);
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
                            hintText: "Cari Judul Berita",
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
                              builder: (context) => DetailBeritaView()));
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
