import 'package:bh_customeapp/featuers/authentication/screens/login/login.dart';
import 'package:bh_customeapp/featuers/authentication/screens/onboarding/onboarding.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenthicationRepository extends GetxController{
  static AuthenthicationRepository get instance => Get.find();

  /// Variable
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;
/// Called from main.dart on app launch
 @override
  void onReady(){
   // Remove the native splash screen
   FlutterNativeSplash.remove();
   // Redirect to the appropriate screen
   screenRedirect();
 }

  screenRedirect() async {
   // Local Storage
    deviceStorage.writeIfNull('IsFirstTime', true);
    // Check if it's the first time language the app
    deviceStorage.read('IsFirstTime') != true
    ? Get.offAll(() => const LoginScreen())  // Redirect to Login Screen if not first time
    : Get.offAll(const OnBoardingScreen()); //  Redirect to OnBoarding Screen if it''s the first time
  }

  /* ------------------------ Email & Password sign in ------------------------*/

/// [EmailAuthentication] - signIn

/// [EmailAuthentication] - Register
Future<UserCredential> registerwithEmailAndPassword(String email ,String password) async {
  try{
    return await _auth.createUserWithEmailAndPassword(email: email, password: password);
  } on FirebaseException catch (e){
  throw TFirebaseException(e.code).message;
  }  on FirebaseException catch (_){
  throw const TFormatterException();
  } on PlatformException catch (e){
  throw TPlatformException(e.code).message;
  } catch (e){
  throw 'Something went wrong. Please try again ';
  }
}

/* ------------------------ Federated identity & social sign in ------------------------*/

/* ------------------------ /end Federated identity & social sign in ------------------------*/

}