import 'package:get/get.dart';

import '../controllers/pengumuman_view_controller.dart';

class PengumumanViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PengumumanViewController>(
      () => PengumumanViewController(),
    );
  }
}
