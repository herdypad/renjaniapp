import 'package:get/get.dart';

import '../controllers/pengumuman_controller.dart';

class PengumumanViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PengumumanViewController>(
      () => PengumumanViewController(),
    );
  }
}
