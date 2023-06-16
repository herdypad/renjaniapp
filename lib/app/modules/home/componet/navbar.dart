import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:renjani/app/routes/app_pages.dart';
import 'package:renjani/themes.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 200.w,
      backgroundColor: primaryColor1,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(height: 30.h),
          Image.asset(
            "assets/icons/icon_app.png",
            height: 70.0,
          ),
          ListTile(
            title: Text(
              'Branda',
              style: mediumText12.copyWith(color: kWhite),
            ),
            onTap: () => {Get.offNamed(Routes.HOME)},
          ),
          Divider(
            color: primaryColor2,
          ),
          ListTile(
            title: Text(
              'Pengumuman',
              style: mediumText12.copyWith(color: kWhite),
            ),
            onTap: () => {Get.toNamed(Routes.PENGUMUMAN_VIEW)},
          ),
          ListTile(
            title: Text(
              'Pelatihan',
              style: mediumText12.copyWith(color: kWhite),
            ),
            onTap: () => {Get.toNamed(Routes.PELATIHAN)},
          ),
          ListTile(
            title: Text(
              'Pelaksanaan',
              style: mediumText12.copyWith(color: kWhite),
            ),
            onTap: () {
              Get.offNamed(Routes.PELAKSANAAN);
            },
          ),
          ListTile(
            title: Text(
              'Survey dan Sertifikat',
              style: mediumText12.copyWith(color: kWhite),
            ),
            onTap: () => null,
          ),
          ListTile(
            title: Text(
              'User Setting',
              style: mediumText12.copyWith(color: kWhite),
            ),
            onTap: () => {Get.offNamed(Routes.EVENT)},
          ),
          Divider(
            color: primaryColor2,
          ),
          ListTile(
            title: Text(
              'FAQ',
              style: mediumText12.copyWith(color: kWhite),
            ),
            onTap: () => {Get.toNamed(Routes.FAQ)},
          ),
          ListTile(
            leading: Icon(
              Icons.logout_rounded,
              size: 24.0,
              color: kWhite,
            ),
            title: Text(
              'Logout',
              style: mediumText12.copyWith(color: kWhite),
            ),
            onTap: () => {
              Navigator.of(context).pushNamedAndRemoveUntil(
                  Routes.LOGIN, (route) => false,
                  arguments: Routes.LOGIN)
            },
          ),
        ],
      ),
    );
  }
}
