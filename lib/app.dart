import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:expense_management_app/utils/theme/theme.dart';
import 'core/app_routes.dart';
import 'features/authentication/screens/onboarding/onboarding.dart';
import 'features/authentication/screens/splash/splash_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const SplashScreen(),
      // const OnBoardingScreen(),
    );
  }
}