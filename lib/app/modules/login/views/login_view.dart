import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:renjani/app/routes/app_pages.dart';
import 'package:renjani/themes.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScrollController _scrollController = ScrollController();
    bool passToggle = true;
    TextEditingController _user_id_controller = TextEditingController();
    TextEditingController _password_controller = TextEditingController();

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
                      child: SvgPicture.asset('assets/icons/icon-launcer.svg',
                          height: 70.95, width: 70)),
                  const SizedBox(height: 10),
                  Center(
                      child: Image.asset(
                    'assets/icons/icon-launcer.png',
                    scale: 4,
                  )),
                  // Center(
                  //     child: Text('Presensi Mobile',
                  //         style: semiBoldText14.copyWith(color: appBrandBlue))),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _user_id_controller,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: "User ID",
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
                    controller: _password_controller,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: passToggle,
                    decoration: InputDecoration(
                      labelText: "Password",
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
                  Row(
                    children: [
                      Expanded(
                          child: SizedBox(
                        height: 49,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: primaryColor2,
                          ),
                          onPressed: () {
                            Navigator.of(context).pushNamedAndRemoveUntil(
                                Routes.HOME, (route) => false,
                                arguments: Routes.HOME);

                            // return;
                            // String _user_id = _user_id_controller.text.trim();
                            // String _password = _password_controller.text.trim();

                            // if (_user_id.isEmpty) {
                            //   showCustomSnackBar("User id kosong", context,
                            //       isError: true);
                            // } else if (_password.isEmpty) {
                            //   showCustomSnackBar("Password kosong", context,
                            //       isError: true);
                            // } else {
                            //   authProvider
                            //       .login(_user_id, _password)
                            //       .then((status) {
                            //     if (status.isSuccess) {
                            //       Navigator.of(context).pushNamedAndRemoveUntil(
                            //           RouteHelper.home, (route) => false,
                            //           arguments: HomeScreen());
                            //     } else {
                            //       showCustomSnackBar(
                            //           "Login Gagal / Username tidak cocok",
                            //           context);
                            //     }
                            //   });
                            // }
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: primaryColor1,
                            ),
                          ),
                        ),
                      )
                          // : Center(
                          //     child: CircularProgressIndicator(
                          //     valueColor: AlwaysStoppedAnimation<Color>(
                          //         appBrandBlue),
                          //   ))
                          ),
                      SizedBox(width: 20),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamedAndRemoveUntil(
                              Routes.HOME, (route) => false,
                              arguments: Routes.HOME);
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
                  )
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
