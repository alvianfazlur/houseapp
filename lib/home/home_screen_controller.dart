import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:houseapp/home/home_screen.dart';
import '../data/user_data.dart';

class HomeScreenController extends GetxController{

  final List<UserData> userList = [];
  List<UserData> displayUser = [];
  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController typeController = TextEditingController();

  @override
  void onInit() {
    displayUser = userList;
    super.onInit();
  }
  void addUser() {
    String name = nameController.text;
    String number = numberController.text;
    String type = typeController.text;

    UserData newUser = UserData(name: name, number: number, type: type);
    userList.add(newUser);

    Get.snackbar(
      'User Added',
      'User has been added successfully!',
      backgroundColor: Colors.blue,
      colorText: Colors.white,
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 3),
    );

    nameController.clear();
    numberController.clear();
    typeController.clear();
    Get.toNamed(HomeScreen.routeName);
  }
}