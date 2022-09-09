import 'package:copa_mundo_app/pages/home/home_page.dart';
import 'package:copa_mundo_app/pages/splashscreen/splashscreen_page.dart';
import 'package:copa_mundo_app/routes/routes.dart';
import 'package:flutter/material.dart';

class RoutesGenerator {
  Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashscreen:
        return MaterialPageRoute(
            builder: (context) => const SplashscreenPage(),
            settings: const RouteSettings(name: 'Splashscreen'));
      default:
        return MaterialPageRoute(
            builder: (context) => const HomePage(),
            settings: const RouteSettings(name: 'Home Page'));
    }
  }
}
