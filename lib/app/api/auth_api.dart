import '../../services/api_service.dart';

class AuthApi {
  static Future<Map<String, dynamic>> login({
    required String username,
    required String password,
  }) async {
    try {
      final url = 'api/v1/auth/login';

      final response = await ApiService().request(
        url: url,
        method: Method.POST,
        parameters: {"username": username, "password": password},
        isToken: false,
      );

      return response;
    } catch (e) {
      rethrow;
    }
  }

  static Future<Map<String, dynamic>> whoIam() async {
    try {
      final url = 'api/v1/auth/whoami';

      final response = await ApiService().request(
        url: url,
        method: Method.POST,
        parameters: {},
        isToken: true,
      );

      return response;
    } catch (e) {
      rethrow;
    }
  }
}
