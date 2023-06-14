import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:renjani/app/routes/app_pages.dart';
import 'package:renjani/themes.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: primaryColor1,
          ),
          onPressed: () {
            Navigator.of(context).pushNamedAndRemoveUntil(
                Routes.PENGUMUMAN_VIEW, (route) => false,
                arguments: Routes.PENGUMUMAN_VIEW);
          },
          child: const Text(
            "Login",
            style: TextStyle(
              color: Color(0xffffffff),
            ),
          ),
        ),
      ),
    );
  }
}
