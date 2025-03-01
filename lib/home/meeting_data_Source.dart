import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:flutter/material.dart';

import '../data/meeting.dart';

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Meeting> source){
    appointments = source;
  }
  @override
  String getSubject(int index) {
    return appointments![index].eventName;
  }
  DateTime getStartTime(int index) {
    return appointments![index].date;
  }
  DateTime getEndTime(int index) {
    return appointments![index].date;
  }

  @override
  Color getColor(int index) {
    return appointments![index].background;
  }

  @override
  bool isAllDay(int index) {
    return appointments![index].isAllDay;
  }
}