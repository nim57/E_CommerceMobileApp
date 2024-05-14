import 'package:flutter/material.dart';
import '../../utils/constants/colors.dart';

class TShadowStyle{
  static final verticalProductShodow = BoxShadow(
    color: TColor.darkerGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0,2)
  );

  static final horizantalProductShodow = BoxShadow(
  color: TColor.darkerGrey.withOpacity(0.1),
  blurRadius: 50,
  spreadRadius: 7,
  offset: const Offset(0,2)
  );
}