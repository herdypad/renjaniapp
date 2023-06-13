import 'package:get/get.dart';

import '../../constants/constant.dart';
import '../../utils/app_storage.dart';
import '../../utils/app_utils.dart';

class UtilityController extends GetxController {
  String appVersion = 'version 1.0.0';
  RxBool isShowLog = false.obs;
  RxString currentPage = ''.obs;

  @override
  void onInit() {
    initData();
    getAppVersion();
    super.onInit();
  }

  Future<void> initData() async {
    final b = await AppStorage.isContain(key: LOG_BUTTON);
    isShowLog(b);
  }

  Future<void> getAppVersion() async {
    appVersion = await AppUtils.getAppVersion();
  }

  Future<void> showLogButton() async {
    await AppStorage.write(key: LOG_BUTTON, value: '1');
    isShowLog(true);
  }

  Future<void> hideLogButton() async {
    await AppStorage.delete(key: LOG_BUTTON);
    isShowLog(false);
  }
}
