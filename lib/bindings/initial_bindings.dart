import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:healtether_app/controllers/auth_controller.dart';
import 'package:healtether_app/firebase_options.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() async {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
    Get.put(AuthController(), permanent: true);
  }
}
