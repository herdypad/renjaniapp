import 'package:get/get.dart';

import '../modules/api_log/bindings/api_log_binding.dart';
import '../modules/api_log/views/api_log_view.dart';
import '../modules/blocked_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/pengumuman_view/bindings/pengumuman_view_binding.dart';
import '../modules/pengumuman_view/views/pengumuman_view.dart';
import '../modules/splash_screen_view.dart';
import '../modules/under_development.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.BLOCKED,
      page: () => const BlockedView(),
    ),
    GetPage(
      name: _Paths.UNDER_DEVELOPMENT,
      page: () => const UnderDevelopmentView(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => const SplashScreenView(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.API_LOG,
      page: () => const ApiLogView(),
      binding: ApiLogBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.PENGUMUMAN_VIEW,
      page: () => const PengumumanViewView(),
      binding: PengumumanViewBinding(),
    ),
  ];
}
