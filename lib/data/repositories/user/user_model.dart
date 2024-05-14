import 'dart:html';

import 'package:bh_customeapp/utils/formatters/formatter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel{
  final String id;
  String firstName;
  String lastName;
  final String username;
  final String email;
  String phoneNumber;
  String profilePicture;

  /// Constructor for UserModel.
UserModel({
  required this.id,
  required this.username,
  required this.email,
  required this.lastName,
  required this.firstName,
  required this.phoneNumber,
  required this.profilePicture,
});

/// Helper function to get the full name
String get fullName =>'$firstName $lastName';

/// Helper function to format phone number
String get formattedPhoneNo => TFormatter.formatPhoneNumber(phoneNumber);

/// Static function to split full name into first and last name
static List<String> nameParts(fullName) => fullName.split(" ");

/// static function to generate a username form into first the full name
static String generateUsername(fullName) {
  List<String> nameParts = fullName.split(" ");
  String firstName = nameParts[0].toLowerCase();
  String lastName = nameParts.length > 1 ? nameParts[1].toLowerCase(): "" ;

  String camelCaseUsername = "$firstName$lastName"; // combine first name and lastname
  String usernameWithPrefix = "cwt_$camelCaseUsername"; // add 'cwt' prefix
  return usernameWithPrefix;
}
/// Static function to create on empty user model
static UserModel empty() => UserModel(id: '', username: '', email:'', lastName: '', firstName: '', phoneNumber:'', profilePicture: '');

/// Convert model to Json Structure for storing data in Firebase
Map<String, dynamic> toJson(){
  return{
    'FirstName' : firstName,
    'LastName' : lastName,
    'Username' : username,
    'Email' : email,
    'PhoneNumber' : phoneNumber,
    'ProfilePicture' : profilePicture
  };
}

/// Factory methode to create a UserModel
 factory UserModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> document){
  if(document.data() != null){
    final data = document.data()!;
    return UserModel(
        id:document.id,
        firstName:data['FirstName'] ?? '' ,
        lastName:data['LastName']?? '',
        username: data['Username'] ?? '',
        email:data['Email']?? '',
        phoneNumber:data['PhoneNumber']?? '',
        profilePicture: data['ProfilePicture']?? '' );
  }
 }
}