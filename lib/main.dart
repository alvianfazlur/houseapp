import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:houseapp/home/home_screen_binding.dart';
import 'package:houseapp/pages/app_pages.dart';
import 'package:houseapp/splash/splash_screen.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: SplashScreen.routeName,
    initialBinding: HomeScreenBinding(),
    getPages: appPages,
  ));
}




