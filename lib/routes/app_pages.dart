import 'package:get/get.dart';
import 'package:match_mamker/screens/splash/splash.dart';
import 'package:match_mamker/screens/splash/splash_screen.dart';

part 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashScreen(),
      binding: SplashBinding(),
    ),
  ];
}
