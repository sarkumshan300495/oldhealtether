import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:healtether_app/bindings/initial_bindings.dart';
import 'package:healtether_app/routes/app_routes.dart';
import 'package:healtether_app/screen/home/home_screen.dart';
import 'package:healtether_app/screen/splashScreen/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  InitialBindings().dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.rountName,
      getPages: AppRoutes.routes(),
    );
  }
}
