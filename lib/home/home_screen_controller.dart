import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:houseapp/home/home_screen.dart';
import '../data/user_data.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreenController extends GetxController{

  late SharedPreferences prefs;
  final List<UserData> userList = [];
  List<UserData> displayUser = [];
  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController typeController = TextEditingController();

  @override
  void onInit() async{
    super.onInit();
    prefs = await SharedPreferences.getInstance();
    await loadUsers();
  }
  Future<void> loadUsers() async {
    final userJsonList = prefs.getStringList('user_list');
    if (userJsonList != null) {
      userList.clear();
      userList.addAll(userJsonList.map((userJson) => UserData.fromJson(jsonDecode(userJson))));
    }
    displayUser = userList;
    update();
  }
  void addUser() async{
    String name = nameController.text;
    String number = numberController.text;
    String type = typeController.text;

    UserData newUser = UserData(name: name, number: number, type: type);
    userList.add(newUser);
    await saveUsers();

    Get.snackbar(
      'User Added',
      'User has been added successfully!',
      backgroundColor: Colors.blue,
      colorText: Colors.white,
      snackPosition: SnackPosition.TOP,
      duration: const Duration(seconds: 3),
    );

    nameController.clear();
    numberController.clear();
    typeController.clear();
    Get.toNamed(HomeScreen.routeName);
  }
  Future<void> saveUsers() async {
    final userJsonList = userList.map((user) => jsonEncode(user.toJson())).toList();
    await prefs.setStringList('user_list', userJsonList);
  }

  void updateUser(int index, String newName, String newNumber, String newType) async {
    String name = newName;
    String number = newNumber;
    String type = newType;

    UserData updatedUser = UserData(name: name, number: number, type: type);
    userList[index] = updatedUser;

    await saveUsers();

    Get.snackbar(
      'User Updated',
      'User has been updated successfully!',
      backgroundColor: Colors.green,
      colorText: Colors.white,
      snackPosition: SnackPosition.TOP,
      duration: const Duration(seconds: 3),
    );

    nameController.clear();
    numberController.clear();
    typeController.clear();
    Get.offNamed(HomeScreen.routeName);
  }

  void deleteUser(int index) async{
    displayUser.removeAt(index);
    await saveUsers();
    update();
  }
}