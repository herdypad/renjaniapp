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
}
