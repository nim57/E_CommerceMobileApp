import 'package:bh_customeapp/app.dart';
import 'package:bh_customeapp/utils/theme/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'data/repositories/authentication/authentication_repository.dart';
import 'firebase_options.dart';

Future<void> main() async {

  /// Widgrts Binding
  final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  /// Getx Local Storage
  await GetStorage.init();
  
  /// -Awater Splash unit other item Storage
  FlutterNativeSplash.preserve(widgetsBinding:widgetsBinding );

  ///  Initialize Firebase & Authentication Repository
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then(
          (FirebaseApp value) => Get.put(AuthenticationRepository()));


  runApp(const App());
}



