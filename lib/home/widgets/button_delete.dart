import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:houseapp/data/events.dart';
import 'package:houseapp/home/home_screen_controller.dart';

import '../../theme.dart';

class ButtonDelete extends StatelessWidget {
  const ButtonDelete({Key? key,required this.controller, required this.event}) : super(key: key);

  final HomeScreenController controller;
  final EventModel event;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.dialog(
          AlertDialog(
            title: Text(
              'Delete Your To Do?',
              style: blackTextStyle,
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [

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
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.red),

                      ),
                      onPressed: () {
                        controller.deleteTodo(event);
                        Get.back();
                        Get.snackbar(
                          'Todo Deleted',
                          'Todo List has been deleted successfully!',
                          backgroundColor: Colors.blueAccent,
                          colorText: Colors.white,
                          snackPosition: SnackPosition.TOP,
                          duration: const Duration(seconds: 3),
                        );
                      },
                      child: Text('Delete', style: whiteTextStyle,),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(10),
        ),
        height: 100,
        child: Container(
          width: 50,
          child: Icon(
            Icons.delete,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
