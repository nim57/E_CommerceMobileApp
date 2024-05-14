import 'package:get/get.dart'; // For state management with GetX
import 'package:connectivity_plus/connectivity_plus.dart'; // For network connectivity checking
import 'package:flutter/services.dart'; 
import 'package:bh_customeapp/common/widgets/loaders/loaders.dart';
import 'dart:async';

/// Manages the network connectivity status and provides methode to check and handel connectivity changes
class  NetworkManager extends GetxController{
  static NetworkManager get instance => Get.find();

  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;
  final Rx<ConnectivityResult> _connectionStatus = ConnectivityResult.none.obs;

  /// Initialized the Network manage  and set up a status to connectivity check the connection status

  @override
  void onInit() {
    super.onInit();
    //_connectivitySubscription =_connectivity.onConnectivityChanged .listen(_updateConnnectionStatus);
  }

  /// Update the connection status based on changes in connectivity  and show a relevant popup  for on internet connection

   Future<void> _updateConnnectionStatus(ConnectivityResult result) async {
    _connectionStatus.value = result;
    if(_connectionStatus.value == ConnectivityResult.none){
      TLoader.warningSnackBar(title: 'No Internet Connection');
    }
   }
   /// Check the
/// Restuns

Future<bool> isConnected() async {
    try{
      final result = await _connectivity.checkConnectivity();
      if(result == ConnectivityResult.none) {
        return false;
      } else{
        return false;
      }
    }on PlatformException catch (_) {
      return true;
    }
}

  @override
  void onClose() {
    super.onClose();
    _connectivitySubscription.cancel();
  }
  /// Display or class the activity
}