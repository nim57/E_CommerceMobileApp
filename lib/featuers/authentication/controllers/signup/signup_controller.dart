import 'package:bh_customeapp/bindings/authentication_repository.dart';
import 'package:bh_customeapp/common/widgets/loaders/loaders.dart';
import 'package:bh_customeapp/data/repositories/user/user_model.dart';
import 'package:bh_customeapp/data/repositories/user/user_repository.dart';
import 'package:bh_customeapp/featuers/authentication/screens/signup_widgets/veryfy_email.dart';
import 'package:bh_customeapp/utils/constants/image_Strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../../../common/widgets/loaders/network_manager.dart';
import '../../../../utils/popups/fullscreen_loader.dart';

class SignupController extends GetxController{
  static  SignupController get instance => Get.find();


  /// Variable
  final hidepassword = true.obs; // hiding ro showing password
  final privacryPolicy = true.obs;   // Privacy Policy
  final email = TextEditingController(); // controller for email input
  final lastName = TextEditingController(); // controller for last Name input
  final username = TextEditingController(); // controller for username input
  final password = TextEditingController(); // controller for password input
  final firstName = TextEditingController(); // controller for firstName input
  final phoneNumber = TextEditingController(); // controller for phone Number input
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>(); // Form  key for validation

/// SignUp
    void signup() async {
      try{
        // Start Loading
        TFullScreenLoader.openLoadingDialog('We are processing your information...',  TImages.checkimage);
        // Check Internet Connectivity
        final isConnected = await NetworkManager.instance.isConnected();
        if(isConnected) return;
        // Form Validation
        if(!signupFormKey.currentState!.validate()) return;

        // Privacy Police Check
        if(!privacryPolicy.value){
          TLoader.warningSnackBar(title: 'Accept Privacy Policy',
          message: 'In order to create account, tou must have and accept and the');
        }

        // Register user in the firebase Authentication  & Save data in the Firebase
        final userCredential =  await AuthenthicationRepository.instance.registerwithEmailAndPassword(email.text.trim(), password.text.trim());

        // Save Authentication user data in the Firebase Firestore
         final newUser = UserModel(
           id : userCredential.user!.uid,
           firstName : firstName.text.trim(),
           lastName : lastName.text.trim(),
           username : username.text.trim(),
           email : email.text.trim(),
           phoneNumber : phoneNumber.text.trim(),
           profilePicture : '',
         );

         final userRepository = Get.put(UserRepository());
         userRepository.saveUserRecord(newUser);
        // Show Success Message
       TLoader.sucessSnackBar(title: 'Congratulation', message: 'Your account has been created! verify to continue');
        // Move to verify Email Screen

        TFullScreenLoader.stopLoding();
      }catch (e){
        // Show some Generic Error to the user
        TLoader.errorSnackBar(title: 'Oh Snap!',message: e.toString());
      } finally{
        // Remove Loader
        TFullScreenLoader.stopLoding();
      }
    }
}