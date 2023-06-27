import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:renjani/app/routes/app_pages.dart';

import '../../home/componet/navbar.dart';
import '../component/asistensi_item.dart';
import '../controllers/pelaksanaan_controller.dart';
import '../../../../themes.dart';

class PelaksanaanView extends GetView<PelaksanaanController> {
  const PelaksanaanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();

    Column item_title(title, select) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: mediumText14.copyWith(color: primaryColor1),
          ),
          Container(
            width: 70,
            height: 5,
            decoration: BoxDecoration(
              color:
                  select == 0 ? primaryColor2 : primaryColor2.withOpacity(0.0),
              borderRadius: BorderRadius.circular(9),
            ),
          )
        ],
      );
    }

    return Obx(() {
      return Scaffold(
          key: _scaffoldKey,
          drawer: NavBar(),
          drawerEnableOpenDragGesture: true,
          appBar: AppBar(
            backgroundColor: primaryColor1,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Pelaksanaan",
                  style: mediumText14.copyWith(fontSize: 24.sp, color: kWhite),
                ),
              ],
            ),
            leading: GestureDetector(
              onTap: () {
                _scaffoldKey.currentState?.openDrawer();
              },
              child: const Icon(
                Icons.menu,
                size: 30,
              ),
            ),
            actions: <Widget>[
              Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.USER_PROFILE);
                    },
                    child: Icon(
                      Icons.account_circle,
                      size: 30.0,
                      color: primaryColor2,
                    ),
                  )),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: primaryColor5,
            child: Icon(
              Icons.add,
              color: primaryColor1,
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                controller: ScrollController(),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          controller.changeIndexMenu(0);
                        },
                        child: item_title("Asistensi SPT",
                            controller.currentIndexMenu.value != 0 ? 1 : 0),
                      ),
                      SizedBox(width: 40.w),
                      InkWell(
                        onTap: () {
                          controller.changeIndexMenu(1);
                        },
                        child: item_title("Pendampingan BDS",
                            controller.currentIndexMenu.value != 1 ? 1 : 0),
                      ),
                      SizedBox(width: 40.w),
                      InkWell(
                        onTap: () {
                          controller.changeIndexMenu(2);
                        },
                        child: item_title("Kehumasan",
                            controller.currentIndexMenu.value != 2 ? 1 : 0),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15.h),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(children: [
                    asistensi_item(
                        point: '10',
                        title: "Asistensi SPT UMKM",
                        tgl: "9 October 2020",
                        status: "Draf"),
                    asistensi_item(
                        point: '15',
                        title: "Asistensi SPT Orang Pribadi",
                        tgl: "19 October 2020",
                        status: "Draf"),
                    asistensi_item(
                        point: '20',
                        title: "Asistensi SPT UMKM pada kantor pratama jakarta",
                        tgl: "29 October 2020",
                        status: "Draf"),
                    asistensi_item(
                        point: '10',
                        title: "Asistensi SPT UMKM",
                        tgl: "9 October 2020",
                        status: "Draf"),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: InkWell(
                        onTap: () {},
                        child: Ink(
                          height: 54.h,
                          decoration: BoxDecoration(
                            color: btnPrimary,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Center(
                              child: Text("Load More",
                                  style: mediumText14.copyWith(
                                      fontSize: 14.sp,
                                      color: primaryColor1.withOpacity(0.5)))),
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            ],
          ));
    });
  }
}
