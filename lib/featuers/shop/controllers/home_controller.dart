import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeConteoller extends GetxController{
  static HomeConteoller get instancy => Get.find();

  final caroisalCurrentIndex = 0.obs;

  void updatePageIndicator (index) {
    caroisalCurrentIndex.value = index;
  }
}