import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:renjani/app/routes/app_pages.dart';
import 'package:renjani/widgets/others/show_dialog.dart';

import '../../../../themes.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScrollController _scrollController = ScrollController();

    return Scaffold(
      backgroundColor: primaryColor1,
      // appBar: AppBar(
      //   title: const Text('LoginView'),
      //   centerTitle: true,
      // ),
      body: Stack(children: [
        Scrollbar(
          controller: _scrollController,
          child: SingleChildScrollView(
            controller: _scrollController,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Center(
                      child: Image.asset(
                    'assets/icons/icon_app.png',
                    scale: 4,
                  )),
                  // Center(
                  //     child: Text('Presensi Mobile',
                  //         style: semiBoldText14.copyWith(color: appBrandBlue))),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: controller.cUsername,
                    decoration: InputDecoration(
                      filled: true,
                      hintText: "User ID",
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12)),
                          borderSide: BorderSide(
                            color: appBrandYellow,
                            width: 2,
                          )),
                      enabledBorder: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12)),
                          borderSide: BorderSide(
                            color: appYellow,
                          )),
                      prefixIcon: const Icon(Icons.person),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: controller.cPassword,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: controller.passToggle.value,
                    decoration: InputDecoration(
                      hintText: "Password",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12)),
                          borderSide: BorderSide(
                            color: appBrandYellow,
                            width: 2,
                          )),
                      enabledBorder: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12)),
                          borderSide: BorderSide(
                            color: appYellow,
                          )),
                      prefixIcon: const Icon(Icons.key),
                      // suffixIcon: InkWell(
                      //   onTap: () {
                      //     setState(() {
                      //       passToggle = !passToggle;
                      //     });
                      //   },
                      //   child: Icon(passToggle
                      //       ? Icons.visibility
                      //       : Icons.visibility_off),
                      // ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Obx(() {
                    return Row(
                      children: [
                        Expanded(
                            child: SizedBox(
                          height: 49,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: primaryColor2,
                            ),
                            onPressed: () {
                              controller.login();
                            },
                            child: controller.isLoading.isFalse
                                ? Text(
                                    "Login",
                                    style: TextStyle(
                                      color: primaryColor1,
                                    ),
                                  )
                                : Container(
                                    height: 20.h,
                                    width: 20.w,
                                    child: CircularProgressIndicator(
                                      color: primaryColor1,
                                    ),
                                  ),
                          ),
                        )),
                        SizedBox(width: 20),
                        InkWell(
                          onTap: () {
                            controller.loginFinger();
                            // controller.localAuth(context).then((value) {
                            //   if (value) {
                            //     controller.loginFinger();
                            //   }
                            // });
                          },
                          child: Container(
                              height: 50.h,
                              width: 50.w,
                              decoration: BoxDecoration(
                                color: primaryColor2,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Icon(
                                Icons.fingerprint,
                                color: primaryColor1,
                                size: 30,
                              )),
                        ),
                      ],
                    );
                  })
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
