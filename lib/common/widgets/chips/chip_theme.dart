import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class TChipTheme{
  TChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    deleteIconColor: TColor.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: TColor.black),
    selectedColor: TColor.primaryColor,
    padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 12),
    checkmarkColor: TColor.white,
  );

  static ChipThemeData darkChipTheme = ChipThemeData(
    deleteIconColor: TColor.darkerGrey,
    labelStyle: const TextStyle(color: TColor.white),
    selectedColor: TColor.primaryColor,
    padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 12),
    checkmarkColor: TColor.white,
  );
}