import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:houseapp/home/home_screen_controller.dart';
import 'package:houseapp/home/user_section/user_card.dart';
import 'package:houseapp/theme.dart';

class EventList extends GetView<HomeScreenController> {
  const EventList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenController>(
      builder: (controller) => ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: controller.displayEvent.length,
        itemBuilder: (context,index) {
          var event = controller.displayEvent[index];
          return EventCard(
            event : event,
            index : index,
          );
        },
      ),
    );
  }
}
