import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healtether_app/screen/auth/login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static const String routeName = "/";

  @override
  Widget build(BuildContext context) {
    // Future.delayed(Duration(seconds: 2), () {
    //   // Navigate to the Dashboard screen using GetX
    //   Get.toNamed(LoginScreen.routeName);
    // });

    return Scaffold(
      body: Center(
        child: Image.asset("assets/title.png"),
      ),
    );
  }
}
