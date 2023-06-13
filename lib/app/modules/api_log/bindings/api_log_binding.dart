import 'package:get/get.dart';

import '../controllers/api_log_controller.dart';

class ApiLogBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ApiLogController>(
      () => ApiLogController(),
    );
  }
}
