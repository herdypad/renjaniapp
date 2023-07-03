import 'package:get/get.dart';
import 'package:renjani/app/controllers/user_info_controller.dart';

import '../controllers/utility_controller.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get
      ..put(UtilityController())
      ..put(UserInfoController());
  }
}
