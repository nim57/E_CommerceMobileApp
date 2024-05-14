import 'package:bh_customeapp/featuers/authentication/screens/login/login.dart';
import 'package:bh_customeapp/featuers/authentication/screens/onboarding/onboarding.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController{
  static AuthenticationRepository get instance => Get.find();
/// variables
     final deviceStorage = GetStorage();

     /// Called from main.dart on app launch

@override
void onReady(){
  FlutterNativeSplash.remove();
  screenRedirect();
}

/// Function to Show Relevant Screen
  screenRedirect() async{
         // Local Storage
    if(kDebugMode){
      print('=================== Get Storage Auth Ropo ================');
      print(deviceStorage.read('IsFirstTime'));
    }
    deviceStorage.writeIfNull('IsFirstTime', true);
    deviceStorage.read("IsFirstTime") != true ? Get.offAll(() => const LoginScreen()): Get.offAll(const OnBoardingScreen());
  }

  /* -------------------------- Email & Password sign in -----------------*/
}