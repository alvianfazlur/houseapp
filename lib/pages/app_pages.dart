import 'package:flutter/animation.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:houseapp/home/home_screen.dart';
import 'package:houseapp/home/home_screen_binding.dart';
import 'package:houseapp/splash/splash_screen.dart';

import '../detail/user.dart';

var appPages = [
  GetPage(
    name: SplashScreen.routeName,
    page: () => const SplashScreen(),
    transition: Transition.cupertino,
    curve: Curves.easeInOut,
    transitionDuration: const Duration(milliseconds: 250),
  ),
  GetPage(
    name: HomeScreen.routeName,
    page: () => const HomeScreen(),
    binding: HomeScreenBinding(),
    transition: Transition.cupertino,
    curve: Curves.easeInOut,
    transitionDuration: const Duration(milliseconds: 250),
  ),
  GetPage(
    name: UserScreen.routeName,
    page: () => UserScreen(),
    transition: Transition.cupertino,
    curve: Curves.easeInOut,
    transitionDuration: const Duration(milliseconds: 250),
  ),
];