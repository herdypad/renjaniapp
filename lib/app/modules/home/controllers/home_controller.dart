import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  PageController pageController = PageController();
  RxInt selectedPage = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  //==========================///

  void navigation(int index) {
    selectedPage(index);
    pageController.jumpToPage(index);
  }
}
