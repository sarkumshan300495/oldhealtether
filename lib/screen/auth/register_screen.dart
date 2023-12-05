import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healtether_app/controllers/auth_controller.dart';
import 'package:healtether_app/theme/theme.dart';
import 'package:healtether_app/widgets/custom_primary_button.dart';
import 'package:healtether_app/widgets/input_field.dart';

class RegisterScreen extends GetView<AuthController> {
  const RegisterScreen({super.key});

  static const String routeName = "/register";

  // void togglePassword() {
  //   controller.isPasswordHidden.value = !controller.isPasswordHidden.value;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 40.0, 24.0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Register new\naccount',
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
                      hintText: 'Name',
                      controller: controller.nameController,
                      suffixIcon: const SizedBox(),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    InputField(
                      hintText: 'Email',
                      controller: controller.emailController,
                      suffixIcon: const SizedBox(),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    // Obx(
                    //   () =>
                    InputField(
                      hintText: 'Password',
                      controller: controller.passwordController,
                      // obscureText: controller.isPasswordHidden.value,
                      suffixIcon: IconButton(
                        color: textGrey,
                        splashRadius: 1,
                        icon: Icon(Icons.visibility),
                        // Icon(controller.isPasswordHidden.value
                        //     ? Icons.visibility_outlined
                        //     : Icons.visibility_off_outlined),
                        // onPressed: togglePassword,
                        onPressed: () {},
                      ),
                    ),
                    // ),
                    const SizedBox(
                      height: 32,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Obx(
                  //   () =>
                  // GestureDetector(
                  //   onTap: () {
                  //     // controller.isChecked.value =
                  //     //     !controller.isChecked.value;
                  //   },
                  //   // child: Container(
                  //   //   decoration: BoxDecoration(
                  //   //     color: controller.isChecked.value
                  //   //         ? primaryBlue
                  //   //         : Colors.transparent,
                  //   //     borderRadius: BorderRadius.circular(4.0),
                  //   //     border: controller.isChecked.value
                  //   //         ? null
                  //   //         : Border.all(color: textGrey, width: 1.5),
                  //   //   ),
                  //   //   width: 20,
                  //   //   height: 20,
                  //   //   child: controller.isChecked.value
                  //   //       ? const Icon(
                  //   //           Icons.check,
                  //   //           size: 20,
                  //   //           color: Colors.white,
                  //   //         )
                  //   //       : null,
                  //   // ),
                  // ),
                  // ),
                  // const SizedBox(
                  //   width: 12,
                  // ),
                  // Column(
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   children: [
                  //     Text(
                  //       'By creating an account, you agree to our',
                  //       style: regular16pt.copyWith(color: textGrey),
                  //     ),
                  //     Text(
                  //       'Terms & Conditions',
                  //       style: regular16pt.copyWith(color: primaryColor),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              CustomPrimaryButton(
                controller: controller,
                buttonColor: primaryColor,
                textValue: 'Register',
                textColor: Colors.white,
                onPressed: () async {
                  controller.registerWithEmail();
                  // if (controller.isChecked.value) {
                  // } else {
                  //   Get.showSnackbar(
                  //     const GetSnackBar(
                  //       // title: "Hello",
                  //       message:
                  //           'Please accept Terms & Services, then try again!',
                  //       icon: Icon(CupertinoIcons.refresh),
                  //       backgroundColor: Colors.red,
                  //       duration: Duration(seconds: 3),
                  //     ),
                  //   );
                  // }
                },
              ),
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: regular16pt.copyWith(color: textGrey),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigator.pop(
                      //   context,
                      // );

                      Get.back();
                    },
                    child: Text(
                      'Login',
                      style: regular16pt.copyWith(color: primaryColor),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
