import 'package:get/get.dart';

import '../controllers/pelaksanaan_controller.dart';

class PelaksanaanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PelaksanaanController>(
      () => PelaksanaanController(),
    );
  }
}
