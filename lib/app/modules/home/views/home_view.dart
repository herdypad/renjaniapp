import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:renjani/app/modules/home/tab/tab_gallery.dart';
import 'package:renjani/app/modules/home/tab/tab_rank.dart';
import 'package:renjani/themes.dart';

import '../../../../widgets/custom_bottom_navbar.dart';
import '../componet/navbar.dart';
import '../controllers/home_controller.dart';
import '../tab/tab_beranda.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();
    return Obx(() => Scaffold(
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
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          color: primaryColor1,
          child: CustomBottomNavBar(
            selectedIndex: controller.selectedPage.value,
            onTap: (index) {
              controller.navigation(index);
            },
          ),
        ),
        body: PageView(
          controller: controller.pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            TabBeranda(),
            TabGallery(),
            TabRank(),
          ],
        )));
  }
}
