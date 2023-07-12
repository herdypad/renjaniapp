import 'package:get/get.dart';

import 'package:renjani/app/modules/berita/controllers/detailberita_controller.dart';

import '../controllers/berita_controller.dart';

class BeritaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailberitaController>(
      () => DetailberitaController(),
    );
    Get.lazyPut<BeritaController>(
      () => BeritaController(),
    );
  }
}
