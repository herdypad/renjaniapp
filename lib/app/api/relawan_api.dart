import 'dart:io';

import 'package:image_picker/image_picker.dart';

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

  static Future<Map<String, dynamic>> uploadFile(XFile file) async {
    try {
      const url = 'api/v1/relawans/upload/foto_profil';

      final response = await ApiService().request(
        url: url,
        method: Method.FORMDATA,
        parameters: {
          "ipAddress": "string",
          "username": "string",
          "proses": "string"
        },
        file: file.path,
        isToken: true,
      );

      {}

      return response;
    } catch (e) {
      rethrow;
    }
  }

  static Future<Map<String, dynamic>> flashFotoTerbaru() async {
    try {
      const url = 'api/v1/landingpages/flashfoto/terbaru?page=0&size=5';

      final response = await ApiService().request(
        url: url,
        method: Method.GET,
        isToken: false,
      );

      return response;
    } catch (e) {
      rethrow;
    }
  }

  static Future<Map<String, dynamic>> eventTerbaru() async {
    try {
      const url = 'api/v1/landingpages/event/terbaru?page=0&size=4';

      final response = await ApiService().request(
        url: url,
        method: Method.GET,
        isToken: false,
      );

      return response;
    } catch (e) {
      rethrow;
    }
  }

  static Future<Map<String, dynamic>> beritaTerbaru() async {
    try {
      const url = 'api/v1/landingpages/berita/terbaru?page=0&size=4';

      final response = await ApiService().request(
        url: url,
        method: Method.GET,
        isToken: false,
      );

      return response;
    } catch (e) {
      rethrow;
    }
  }
}
