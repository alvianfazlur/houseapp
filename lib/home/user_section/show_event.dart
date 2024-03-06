import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:houseapp/data/events.dart';
import 'package:houseapp/home/home_screen_controller.dart';
import 'package:houseapp/home/user_section/event_card.dart';
import 'package:houseapp/theme.dart';

class EventList extends GetView<HomeScreenController> {
  const EventList({Key? key, required this.events}) : super(key: key);

  final List<EventModel> events;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        events.map((EventModel event) {
          return EventCard(event: event);
        }).toList(),
      ),
    );
  }
}
