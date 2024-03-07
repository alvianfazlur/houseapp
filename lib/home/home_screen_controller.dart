import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:houseapp/add_todo/add_todo_controller.dart';
import 'package:houseapp/data/events.dart';
import 'package:houseapp/home/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data/meeting.dart';

class HomeScreenController extends GetxController{

  late SharedPreferences prefs;
  final List<EventModel> eventList = [];
  List<EventModel> displayEvent = [];
  DateTime? date;
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
  Future<void> saveEvent() async {
    final eventJsonList = eventList.map((event) => jsonEncode(event.toJson())).toList();
    await prefs.setStringList('event_list', eventJsonList);
  }

  List<Meeting> getDataSource() {
    final List<Meeting> meetings = [];

    final DateTime today = DateTime.now();

    eventList.forEach((event) {
      DateTime date = DateTime.parse(event.date);
      Color backgroundColor = date.isBefore(today) ? Colors.red : const Color(0xFF0F8644);
      meetings.add(Meeting(event.title, date, backgroundColor, true, date));
    });

    return meetings;
  }

  Future<void> deleteTodo(EventModel event) async{
    int index = eventList.indexOf(event);
    eventList.removeAt(index);
    await saveEvent();
    getDataSource();
    update();
}

}
