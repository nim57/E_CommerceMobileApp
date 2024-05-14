
import 'package:bh_customeapp/bindings/general_bindings.dart';
import 'package:bh_customeapp/featuers/authentication/screens/onboarding/onboarding.dart';
import 'package:bh_customeapp/utils/constants/colors.dart';
import 'package:bh_customeapp/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode:ThemeMode.system,
      theme:TAppTheme.lightTheam ,
      darkTheme: TAppTheme.darkTheme,
      initialBinding: GeneralBindings(),
      /// show Loader or Circular Progress indication
      home: const Scaffold(backgroundColor: TColor.primaryColor, body: Center(
        child: CircularProgressIndicator(color: Colors.white,),
      ),),
    );
  }
}