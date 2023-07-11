import 'dart:io';

import '../../services/api_service.dart';

class RelawanAPi {
  static Future<Map<String, dynamic>> poinRelawan() async {
    try {
      const url = 'api/v1/relawans/survey_dan_sertifikat';

      final response = await ApiService().request(
        url: url,
        method: Method.GET,
        isToken: true,
      );

      return response;
    } catch (e) {
      rethrow;
    }
  }

  static Future<Map<String, dynamic>> uploadFile(File file) async {
    try {
      const url = 'api/v1/relawans/survey_dan_sertifikat';

      final response = await ApiService().request(
        url: url,
        method: Method.GET,
        isToken: true,
      );

      return response;
    } catch (e) {
      rethrow;
    }
  }
}
