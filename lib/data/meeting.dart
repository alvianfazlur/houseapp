import 'package:flutter/material.dart';

class Meeting {
  Meeting(this.eventName, this.date, this.background, this.isAllDay, this.endDate);

  String eventName;
  DateTime date;
  DateTime endDate;
  Color background;
  bool isAllDay;
}