import 'package:get/get.dart';

import '../controllers/detail_event_c.dart';
import '../controllers/event_controller.dart';

class EventBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailEventC>(
      () => DetailEventC(),
    );
    Get.lazyPut<EventController>(
      () => EventController(),
    );
  }
}
