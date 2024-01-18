import 'package:flutter/animation.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:houseapp/splash/splash_screen.dart';

var appPages = [
  GetPage(
    name: SplashScreen.routeName,
    page: () => const SplashScreen(),
    transition: Transition.cupertino,
    curve: Curves.easeInOut,
    transitionDuration: const Duration(milliseconds: 250),
  ),
];