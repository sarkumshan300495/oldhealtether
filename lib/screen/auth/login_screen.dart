import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healtether_app/controllers/auth_controller.dart';
import 'package:healtether_app/screen/auth/register_screen.dart';
import 'package:healtether_app/theme/theme.dart';
import 'package:healtether_app/widgets/custom_primary_button.dart';
import 'package:healtether_app/widgets/input_field.dart';

class LoginScreen extends GetView<AuthController> {
  LoginScreen({super.key});

  static const String routeName = "/login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 40.0, 24.0, 0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Login to your\naccount',
                  style: heading2.copyWith(color: textBlack),
                ),
                const SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'assets/images/accent.png',
                  width: 99,
                  height: 4,
                ),
              ],
            ),
            const SizedBox(
              height: 48,
            ),
            Form(
              child: Column(
                children: [
                  InputField(
                    hintText: 'Email',
                    suffixIcon: const SizedBox(),
                    controller: controller.emailController,
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  InputField(
                    hintText: 'Password',
                    controller: controller.passwordController,
                    // obscureText: controller.isPasswordHidden.value,
                    suffixIcon: IconButton(
                      color: textGrey,
                      splashRadius: 1,
                      icon: Icon(Icons.visibility),
                      // icon: Icon(controller.isPasswordHidden.value
                      //     ? Icons.visibility_outlined
                      //     : Icons.visibility_off_outlined),
                      // onPressed: togglePassword,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            const SizedBox(
              height: 32,
            ),
            CustomPrimaryButton(
              controller: controller,
              buttonColor: primaryColor,
              textValue: 'Login',
              textColor: Colors.white,
              onPressed: () async {
                controller.loginWithEmail();
              },
            ),

            // const SizedBox(
            //   height: 24,
            // ),
            // Center(
            //   child: Text(
            //     'OR',
            //     style: heading6.copyWith(color: textGrey),
            //   ),
            // ),
            // const SizedBox(
            //   height: 24,
            // ),
            // CustomPrimaryButton(
            //   controller: Null,
            //   buttonColor: const Color(0xfffbfbfb),
            //   textValue: 'Login with Google',
            //   textColor: textBlack,
            //   onPressed: () {},
            // ),
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? ",
                  style: regular16pt.copyWith(color: textGrey),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const RegisterScreen()));
                    // Get.toNamed(RegisterScreen.routeName);
                    controller.navigateToRegisterScreen();
                  },
                  child: Text(
                    'Register',
                    style: regular16pt.copyWith(color: primaryColor),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
