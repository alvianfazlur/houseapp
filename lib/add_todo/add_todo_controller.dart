import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:houseapp/data/events.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data/meeting.dart';
import '../home/home_screen.dart';

class AddTodoController extends GetxController{
  late SharedPreferences prefs;
  TextEditingController titleController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController tagController = TextEditingController();
  final List<EventModel> eventList = [];

  @override
  void onInit() async{
    prefs = await SharedPreferences.getInstance();
    super.onInit();
    await loadEvent();
    print(eventList.length);
  }

  Future<String> fetchDate(String date) async{
    String dateTime = date;
    dateController.text = date;
    return dateTime;

}
  Future<void> loadEvent() async {
    final eventJsonList = prefs.getStringList('event_list');
    if (eventJsonList != null) {
      eventList.clear();
      eventList.addAll(eventJsonList.map((eventJson) => EventModel.fromJson(jsonDecode(eventJson))));
    }
    update();
  }

  void addEvent(String date) async{
    String title = titleController.text;
    String tag = tagController.text;

    EventModel newEvent = EventModel(title: title, date: date, tag: tag);
    eventList.add(newEvent);
    await saveEvent();
    print(eventList.length);
    Get.snackbar(
      'Todo Added',
      'Todo List has been added successfully!',
      backgroundColor: Colors.green,
      colorText: Colors.white,
      snackPosition: SnackPosition.TOP,
      duration: const Duration(seconds: 3),
    );

    titleController.clear();
    dateController.clear();
    tagController.clear();
    Get.offAllNamed(HomeScreen.routeName);
  }

  Future<void> saveEvent() async {
    final eventJsonList = eventList.map((event) => jsonEncode(event.toJson())).toList();
    await prefs.setStringList('event_list', eventJsonList);
  }
}