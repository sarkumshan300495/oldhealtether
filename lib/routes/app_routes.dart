import 'package:get/get.dart';
import 'package:healtether_app/screen/auth/login_screen.dart';
import 'package:healtether_app/screen/auth/register_screen.dart';
import 'package:healtether_app/screen/home/home_screen.dart';
import 'package:healtether_app/screen/splashScreen/splash_screen.dart';

class AppRoutes {
  static List<GetPage> routes() => [
        // GetPage(
        //   name: SplashScreen.routeName,
        //   page: () => const SplashScreen(),
        // ),
        GetPage(
          name: HomeScreen.rountName,
          page: () => HomeScreen(),
        ),
        // GetPage(
        //   name: LoginScreen.routeName,
        //   page: () => LoginScreen(),
        // ),
        // GetPage(
        //   name: RegisterScreen.routeName,
        //   page: () => RegisterScreen(),
        // ),
      ];
}
