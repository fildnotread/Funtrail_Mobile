import 'package:Funtrails/feature/authentication/controllers/Onbordingscreen/onBoarding_controller.dart';
import 'package:Funtrails/feature/authentication/screens/Onbordingscreen/onBoarding.dart';
import 'package:Funtrails/feature/authentication/screens/loginpage/Signin.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'utils/constants/text_strings.dart';
import 'utils/theme/theme.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: TTexts.appName,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      // initialBinding: GeneralBinding(),
           home: const Signin(
        // backgroundColor: TColors.primary,
        // body: Center(
        //   child: CircularProgressIndicator(
        //     color: Colors.white,
        //   ),
        // ),
      ), 
    );
  }
}
