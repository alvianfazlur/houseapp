import 'package:flutter/material.dart';

class Meeting {
  Meeting(this.eventName, this.date, this.background, this.isAllDay);

  String eventName;
  DateTime date;
  Color background;
  bool isAllDay;
}