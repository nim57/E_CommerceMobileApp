import 'package:bh_customeapp/data/repositories/user/user_model.dart';
import 'package:bh_customeapp/utils/formatters/formatter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class UserRepository extends GetxController{
  static UserRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  /// Function to save user data to Firestore
 Future<void> saveUserRecord(UserModel user) async{
   try{
     await _db.collection("Users").doc(user.id).set(user.toJson());
   }on FirebaseException catch (e){
     throw TFirebaseException(e.code).message;
   }  on FirebaseException catch (_){
     throw const TFormatterException();
   } on PlatformException catch (e){
     throw TPlatformException(e.code).message;
   } catch (e){
     throw 'Something went wrong. Please try again ';
   }
 }
}