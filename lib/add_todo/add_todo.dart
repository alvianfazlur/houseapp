import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:houseapp/add_todo/add_todo_controller.dart';
import 'package:houseapp/add_todo/widgets/input_section.dart';
import 'package:houseapp/add_todo/widgets/meeting_data_Source.dart';
import 'package:houseapp/theme.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class AddTodo extends GetView<AddTodoController> {
  const AddTodo({Key? key}) : super(key: key);
  static const routeName = "/add";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Text(
                  'Select a date to add a todo:',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: SfCalendar(
                    todayHighlightColor: Colors.blueAccent,
                    minDate: DateTime.now(),
                    view: CalendarView.month,
                    onTap: (CalendarTapDetails details) async {
                      if (details.targetElement ==
                          CalendarElement.calendarCell) {
                        DateTime selectedDate = details.date!;
                        String formattedDate =
                            "${selectedDate.day}-${selectedDate.month}-${selectedDate.year}";
                        await controller.fetchDate(formattedDate);
                        Get.dialog(
                          AlertDialog(
                            title: Text(
                              'Add Your Plan',
                              style: blackTextStyle,
                            ),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                InputSection(
                                  controller: controller.titleController,
                                  labelText: "Name your Todo",
                                  style: blackTextStyle,
                                ),
                                InputSection(
                                  controller: controller.dateController,
                                  readOnly: true,
                                  labelText: "Date",
                                  style: greyTextStyle,
                                ),
                                InputSection(
                                  controller: controller.tagController,
                                  labelText: "Activity Tag",
                                  style: blackTextStyle,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        Get.back();
                                      },
                                      child: Text('Close'),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        if(controller.titleController.text.isNotEmpty && controller.tagController.text.isNotEmpty){
                                          controller.addEvent(formattedDate);
                                        }
                                      },
                                      child: Text('Add Todo'),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      }
                    },
                    // Custom styling for selected date
                    // selectionDecoration: BoxDecoration(
                    //   color: Colors.blue.withOpacity(0.5),
                    //   shape: BoxShape.circle,
                    // ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
