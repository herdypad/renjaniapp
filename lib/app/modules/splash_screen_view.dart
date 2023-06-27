import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renjani/app/routes/app_pages.dart';
import '../../../../themes.dart';
import '../../services/app_cycle_service.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  // final cUtility = Get.find<UtilityController>();
  double width = Get.width * 0.2;

  @override
  void initState() {
    // cUtility.getAppLanguage();
    startAnimation();
    checkRoute();
    super.initState();
  }

  Future<void> startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 100));
    if (mounted) {
      setState(() {
        width = Get.width * 0.65;
      });
    }
  }

  Future<void> checkRoute() async {
    await Future.delayed(const Duration(milliseconds: 2000));
    await AppCycleService().checkTokenAndRoute();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor1,
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 1000),
          width: width,
          height: width,
          child: Image.asset('assets/icons/icon_app.png'),
        ),
      ),
    );
  }
}
