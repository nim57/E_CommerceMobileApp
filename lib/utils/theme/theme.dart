import 'package:bh_customeapp/utils/theme/custom_themes/appbar_theme.dart';
import 'package:bh_customeapp/utils/theme/custom_themes/bottom_shet_theme.dart';
import 'package:bh_customeapp/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:bh_customeapp/utils/theme/custom_themes/chip_theme.dart';
import 'package:bh_customeapp/utils/theme/custom_themes/elevated_button.dart';
import 'package:bh_customeapp/utils/theme/custom_themes/outline_button_theme.dart';
import 'package:bh_customeapp/utils/theme/custom_themes/text_field_theme.dart';
import 'package:bh_customeapp/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme{
  TAppTheme._();

  static ThemeData lightTheam = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme : TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: TAppBArTheme.lightAppBArTheam,
    checkboxTheme: TCheckBoxTheme.lightCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheam.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlinelineButtonTheme.lightOutlineButton,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.darkTextTheme,
    chipTheme: TChipTheme.darkChipTheme,
    appBarTheme: TAppBArTheme.darkAppBArTheam,
    checkboxTheme: TCheckBoxTheme.darkCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheam.darkElevatedButtonTheme,
    outlinedButtonTheme: TOutlinelineButtonTheme.darkOutlineButton,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
  );
}