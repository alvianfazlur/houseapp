// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:houseapp/home/add_plan.dart';
import 'package:houseapp/home/home_screen_controller.dart';
import 'package:houseapp/home/meeting_data_Source.dart';
import 'package:houseapp/home/user_section/show_event.dart';
import 'package:houseapp/home/widgets/calendar.dart';
import 'package:houseapp/theme.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class HomeScreen extends GetView<HomeScreenController> {
  const HomeScreen({Key? key}) : super(key: key);
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenController>(
      builder: (HomeScreenController controller) => Scaffold(
        body: SafeArea(
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.only(top: 30, left: 20, right: 10),
            child: ListView(
              children: [
                Text(
                  "Dashboard Utama",
                  style: regularTextStyle.copyWith(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Tambah Planner",
                  style: regularTextStyle.copyWith(
                      fontSize: 18, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 150,
                  child: AddPlan(),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Daftar To-Do-List",
                  style: regularTextStyle.copyWith(
                      fontSize: 18, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 10,
                ),
                CalendarWidgets(controller: controller),
                Container(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Detail TodoList",
                      style: regularTextStyle.copyWith(
                          fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                    EventList(
                      events: controller.eventList,
                    ),
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
