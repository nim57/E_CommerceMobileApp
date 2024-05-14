// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyBT57hO6LHj4Ja8BfenCGrHKyU_uG8DFXk',
    appId: '1:768997459372:web:3efd01cde4264001cd2609',
    messagingSenderId: '768997459372',
    projectId: 'bhonline-970b3',
    authDomain: 'bhonline-970b3.firebaseapp.com',
    storageBucket: 'bhonline-970b3.appspot.com',
    measurementId: 'G-8FVDBWBBNH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBUY0g2qVJOZc4jCf-eJuon--23SC1rf7c',
    appId: '1:768997459372:android:3402aa80ac66f809cd2609',
    messagingSenderId: '768997459372',
    projectId: 'bhonline-970b3',
    storageBucket: 'bhonline-970b3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB-Fw-sN3h42VVTwPG1CrVg1A-4KHtLFTs',
    appId: '1:768997459372:ios:a9354ced1bcbc2facd2609',
    messagingSenderId: '768997459372',
    projectId: 'bhonline-970b3',
    storageBucket: 'bhonline-970b3.appspot.com',
    androidClientId: '768997459372-g3c7v9uq1n184qs1l8bgbc5o59tivtj0.apps.googleusercontent.com',
    iosClientId: '768997459372-2aqr9jd1qv6c28rrkkr1g3v48uah2bj1.apps.googleusercontent.com',
    iosBundleId: 'com.example.bhCustomeapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB-Fw-sN3h42VVTwPG1CrVg1A-4KHtLFTs',
    appId: '1:768997459372:ios:a9354ced1bcbc2facd2609',
    messagingSenderId: '768997459372',
    projectId: 'bhonline-970b3',
    storageBucket: 'bhonline-970b3.appspot.com',
    androidClientId: '768997459372-g3c7v9uq1n184qs1l8bgbc5o59tivtj0.apps.googleusercontent.com',
    iosClientId: '768997459372-2aqr9jd1qv6c28rrkkr1g3v48uah2bj1.apps.googleusercontent.com',
    iosBundleId: 'com.example.bhCustomeapp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBT57hO6LHj4Ja8BfenCGrHKyU_uG8DFXk',
    appId: '1:768997459372:web:7e2b3af0ffbd89f8cd2609',
    messagingSenderId: '768997459372',
    projectId: 'bhonline-970b3',
    authDomain: 'bhonline-970b3.firebaseapp.com',
    storageBucket: 'bhonline-970b3.appspot.com',
    measurementId: 'G-3YMM19SGKH',
  );

}