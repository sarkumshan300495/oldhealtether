// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBasl9TLIYx9q2YqMdcrDKEOdeQ-nYOsKA',
    appId: '1:135756014343:web:bcebeba84074cb80db5ba2',
    messagingSenderId: '135756014343',
    projectId: 'healtether-app',
    authDomain: 'healtether-app.firebaseapp.com',
    storageBucket: 'healtether-app.appspot.com',
    measurementId: 'G-PHGMKQ1LB7',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB_FOcKzBnP5taeXtCeOecIVRCHYvw4sGA',
    appId: '1:135756014343:android:b7edb474bb38e805db5ba2',
    messagingSenderId: '135756014343',
    projectId: 'healtether-app',
    storageBucket: 'healtether-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyClumQpHZFZZ51kjsWI37yO0QAwOfG3qtQ',
    appId: '1:135756014343:ios:d4da61de0c0c7951db5ba2',
    messagingSenderId: '135756014343',
    projectId: 'healtether-app',
    storageBucket: 'healtether-app.appspot.com',
    iosClientId: '135756014343-iuftb0bdec3q34ifhmiatsrjpclrksg8.apps.googleusercontent.com',
    iosBundleId: 'com.example.healtether',
  );
}
