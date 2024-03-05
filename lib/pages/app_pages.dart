import 'package:flutter/animation.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:houseapp/add_todo/add_todo.dart';
import 'package:houseapp/add_todo/add_todo_binding.dart';
import 'package:houseapp/home/home_screen.dart';
import 'package:houseapp/home/home_screen_binding.dart';
import 'package:houseapp/splash/splash_screen.dart';

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
    name: AddTodo.routeName,
    page: () => AddTodo(),
    binding: AddTodoBinding(),
    transition: Transition.cupertino,
    curve: Curves.easeInOut,
    transitionDuration: const Duration(milliseconds: 250),
  ),
];