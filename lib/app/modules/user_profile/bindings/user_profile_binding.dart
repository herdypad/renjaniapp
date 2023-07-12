import 'package:get/get.dart';

import 'package:renjani/app/modules/user_profile/controllers/edit_profile_controller.dart';

import '../controllers/user_profile_controller.dart';

class UserProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditProfileController>(
      () => EditProfileController(),
    );
    Get.lazyPut<UserProfileController>(
      () => UserProfileController(),
    );
  }
}
