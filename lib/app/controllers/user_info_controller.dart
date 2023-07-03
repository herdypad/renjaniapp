import 'package:get/get.dart';
import 'package:renjani/app/api/auth_api.dart';
import 'package:renjani/app/models/whoiam_m.dart';

import '../../utils/app_utils.dart';

class UserInfoController extends GetxController {
  final tag = "UserInfoController";
  Rx<WhoiamM> user = WhoiamM().obs;

  @override
  void onInit() {
    super.onInit();
    getDataUser();
  }

  void setDataUser(WhoiamM value) => user(value);

  Future<void> getDataUser() async {
    try {
      final data = await AuthApi.whoIam();

      user(WhoiamM.fromJson(data));

      logSys(tag);
      logSys(user.value.username.toString());
    } catch (e) {
      logSys(e.toString());
    }
  }
}
