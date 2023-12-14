import 'package:flutter/material.dart';
import 'package:app3/presentation/screentwo_screen/screentwo_screen.dart';
import 'package:app3/presentation/splash_screen/splash_screen.dart';
import 'package:app3/presentation/screenfour_screen/screenfour_screen.dart';
import 'package:app3/presentation/screenthree_screen/screenthree_screen.dart';
import 'package:app3/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String screentwoScreen = '/screentwo_screen';

  static const String splashScreen = '/splash_screen';

  static const String screenfourScreen = '/screenfour_screen';

  static const String screenthreeScreen = '/screenthree_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        screentwoScreen: ScreentwoScreen.builder,
        splashScreen: SplashScreen.builder,
        screenfourScreen: ScreenfourScreen.builder,
        screenthreeScreen: ScreenthreeScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: ScreentwoScreen.builder
      };
}
