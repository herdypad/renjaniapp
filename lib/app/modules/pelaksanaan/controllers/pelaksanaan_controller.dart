import 'package:get/get.dart';

class PelaksanaanController extends GetxController {
  //header variable
  RxInt currentIndexMenu = 0.obs;

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

  void changeIndexMenu(int index) {
    currentIndexMenu(index);
  }
}
