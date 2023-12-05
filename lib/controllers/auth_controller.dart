import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_storage/get_storage.dart';
import 'package:healtether_app/firebase_ref/reference.dart';
import 'package:healtether_app/screen/auth/login_screen.dart';
import 'package:healtether_app/screen/auth/register_screen.dart';
import 'package:healtether_app/screen/home/home_screen.dart';
import 'package:healtether_app/model/user_model.dart' as u;

class AuthController extends GetxController {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void onInit() {
    initAuth();
    super.onInit();
  }

  late FirebaseAuth _auth;
  final _user = Rxn<User>();
  late Stream<User?> _authStateChanges;
  final storage = GetStorage();
  late UserCredential userCredential;

  // final userStorage =

  void initAuth() async {
    await Future.delayed(const Duration(seconds: 2));
    _auth = FirebaseAuth.instance;

    final user = _auth.currentUser;

    if (user != null) {
      _user.value = user;
      navigateToHomeScreen();
    } else {
      _authStateChanges = _auth.authStateChanges();
      _authStateChanges.listen((User? user) {
        if (user != null) {
          _user.value = user;
        } else {
          navigateToLoginScreen();
        }
      });
    }
  }

  Future<void> registerWithEmail() async {
    try {
      userCredential = await _auth.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );

      if (userCredential.user != null) {
        u.User user = u.User(
          uid: userCredential.user!.uid, // Firebase user ID
          name: nameController.text,
          email: emailController.text,
        );
        await userRF.doc(userCredential.user!.uid).set(user.toMap());
        saveUser(emailController.text, nameController.text);
        navigateToHomeScreen();
      } else {
        // Handle the case where _authResult.user is null.
        print('Error: User is null');
      }

      // Handle successful registration, e.g., navigate to dashboard.
    } catch (e) {
      // Handle registration error, e.g., display an error message.

      String errorMessage = 'Registration failed.';

      if (e is FirebaseAuthException) {
        // You can handle specific Firebase Auth error codes here.
        switch (e.code) {
          case 'weak-password':
            errorMessage = 'The password provided is too weak.';
            break;
          case 'email-already-in-use':
            errorMessage = 'The account already exists for that email.';
            break;
          // Add more cases as needed for other error codes.
          default:
            errorMessage = 'An error occurred during registration.';
        }
      }

      // Show the error message to the user.
      Get.snackbar(
        'Registration Error',
        errorMessage,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      print('Error registering user: $e');
    }
  }

  Future<void> loginWithEmail() async {
    try {
      userCredential = await _auth.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );

      final user = userCredential.user;

      if (user != null) {
        // Fetch user data from Firestore using user.uid
        final userData = await fetchUserDataFromFirestore(user.uid);

        if (userData != null) {
          // User data was fetched successfully
          final userName = userData.name;
          final userEmail = userData.email;

          // Handle successful login and display user data
          saveUser(userName, userEmail);
          navigateToHomeScreen();

          Get.snackbar(
            'Login message',
            'Welcome, $userName ($userEmail)!',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.green,
            colorText: Colors.white,
          );
        } else {
          // User data not found in Firestore
          Get.snackbar(
            'Login message',
            'Welcome, ${user.email}!',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.green,
            colorText: Colors.white,
          );
          navigateToHomeScreen();
        }
      }
    } catch (e) {
      // Handle login error and show an error message to the user.
      String errorMessage = 'Login failed.';

      if (e is FirebaseAuthException) {
        // You can handle specific Firebase Auth error codes here.
        switch (e.code) {
          case 'invalid-email':
            errorMessage = 'The email address is not valid.';
            break;
          case 'user-not-found':
            errorMessage = 'No user found for that email.';
            break;
          case 'wrong-password':
            errorMessage = 'Wrong password provided for this email.';
            break;
          // Add more cases as needed for other error codes.
          default:
            errorMessage = 'An error occurred during login.';
        }
      }

      // Show the error message to the user.
      Get.snackbar(
        'Login Error',
        errorMessage,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      print('Error logging in: $e');
    }
  }

  void saveUser(String name, String email) {
    storage.write('name', name);
    storage.write('email', email);
  }

  String? getUser() {
    return storage.read('email');
  }

  String? getUserName() {
    return storage.read('name');
  }

  void navigateToRegisterScreen() {
    Get.toNamed(RegisterScreen.routeName);
  }

  void navigateToLoginScreen() {
    Get.toNamed(LoginScreen.routeName);
  }

  void navigateToHomeScreen() {
    Get.offNamed(HomeScreen.rountName);
  }
}
