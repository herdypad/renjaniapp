import 'package:get/get.dart';
import 'package:renjani/app/api/auth_api.dart';
import 'package:renjani/app/models/whoiam_m.dart';

import '../../utils/app_utils.dart';

class UserInfoController extends GetxController {
  final tag = "UserInfoController";
  Rx<WhoiamM> user = WhoiamM().obs;

  RxBool isLoadData = false.obs;

  @override
  void onInit() {
    super.onInit();
    getDataUser();
  }

  void setDataUser(WhoiamM value) {
    isLoadData(true);
    user(value);
    isLoadData(false);
  }

  Future<void> getDataUser() async {
    isLoadData(true);
    try {
      final data = await AuthApi.whoIam();

      user(WhoiamM.fromJson(data));

      logSys(tag);
      logSys(user.value.username.toString());
      isLoadData(false);
    } catch (e) {
      logSys(e.toString());
      isLoadData(false);
    }
  }
}
