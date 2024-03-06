import 'package:flutter/material.dart';
import 'package:houseapp/home/home_screen_controller.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../../theme.dart';
import '../meeting_data_Source.dart';

class CalendarWidgets extends StatelessWidget {
  const CalendarWidgets({Key? key, required this.controller}) : super(key: key);

  final HomeScreenController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 350,
      child: SfCalendar(
        showNavigationArrow: true,
        view: CalendarView.month,
        dataSource: MeetingDataSource(controller.getDataSource()),
        monthViewSettings: const MonthViewSettings(
          showAgenda: true,
          monthCellStyle: MonthCellStyle(
            todayBackgroundColor: Colors.blueAccent
          ),
          agendaItemHeight: 50,
        ),
        initialSelectedDate: DateTime.now(),
        headerStyle: CalendarHeaderStyle(
          textStyle: blackTextStyle.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.grey[200],
        todayHighlightColor: Colors.blueAccent,
        selectionDecoration: BoxDecoration(
          color: Colors.blue.withOpacity(0.3),
          border: Border.all(color: Colors.blue, width: 2),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
