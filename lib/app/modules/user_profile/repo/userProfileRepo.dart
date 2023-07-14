import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:renjani/app/api/relawan_api.dart';
import 'package:renjani/utils/app_utils.dart';

class UserProfileRepo {
  final TAG = "UserProfileRepo : ";

  Future<String> getPoinUserRelawan() async {
    try {
      final data = await RelawanAPi.poinRelawan();
      logSys(TAG + data['pointRelawan'].toString());
      return data['pointRelawan'].toString();
    } catch (e) {
      logSys(TAG + e.toString());
      return "-";
    }
  }

  Future<void> uploadFile(XFile file) async {
    try {
      final data = await RelawanAPi.uploadFile(file);
      logSys(TAG + data.toString());
    } catch (e) {
      logSys(TAG + e.toString());
    }
  }
}
