import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../../themes.dart';
import '../routes/app_pages.dart';

class NoConnection extends StatelessWidget {
  const NoConnection({Key? key}) : super(key: key);

  void cek() async {
    bool result = await InternetConnectionChecker().hasConnection;
    if (result == true) {
      await Get.offAllNamed(Routes.LOGIN);
    } else {
      // await Get.offAllNamed(Routes.NOCONNECTION);
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor1,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/icons/ic_no_internet.png",
              fit: BoxFit.fill,
            ),
            Text(
              "No Internet",
              style: mediumText12.copyWith(color: primaryColor2, fontSize: 25),
            ),
            Padding(
              padding: const EdgeInsets.all(35.0),
              child: InkWell(
                onTap: () {
                  cek();
                },
                child: Ink(
                  height: 54.h,
                  decoration: BoxDecoration(
                    color: btnRed,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Center(
                      child: Text("Refresh",
                          style: mediumText14.copyWith(
                              fontSize: 14.sp,
                              color: primaryColor1.withOpacity(0.5)))),
                ),
              ),
            ),
          ],
        )));
  }
}
