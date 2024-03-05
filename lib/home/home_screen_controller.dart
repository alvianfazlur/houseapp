import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:houseapp/add_todo/add_todo_controller.dart';
import 'package:houseapp/data/events.dart';
import 'package:houseapp/home/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreenController extends GetxController{

  late SharedPreferences prefs;
  final List<EventModel> eventList = [];
  List<EventModel> displayEvent = [];
  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController typeController = TextEditingController();

  @override
  void onInit() async{
    super.onInit();
    prefs = await SharedPreferences.getInstance();
    await loadEvent();
  }
  Future<void> loadEvent() async {
    final eventJsonList = prefs.getStringList('event_list');
    if (eventJsonList != null) {
      eventList.clear();
      eventList.addAll(eventJsonList.map((userJson) => EventModel.fromJson(jsonDecode(userJson))));
    }
    displayEvent = eventList;
    update();
  }

  // void updateUser(int index, String newName, String newNumber, String newType) async {
  //   String name = newName;
  //   String number = newNumber;
  //   String type = newType;
  //
  //   UserData updatedUser = UserData(name: name, number: number, type: type);
  //   userList[index] = updatedUser;
  //
  //   await saveUsers();
  //
  //   Get.snackbar(
  //     'User Updated',
  //     'User has been updated successfully!',
  //     backgroundColor: Colors.green,
  //     colorText: Colors.white,
  //     snackPosition: SnackPosition.TOP,
  //     duration: const Duration(seconds: 3),
  //   );
  //
  //   nameController.clear();
  //   numberController.clear();
  //   typeController.clear();
  //   Get.offNamed(HomeScreen.routeName);
  // }
  //
  // void deleteUser(int index) async{
  //   displayUser.removeAt(index);
  //   await saveUsers();
  //   update();
  // }
}