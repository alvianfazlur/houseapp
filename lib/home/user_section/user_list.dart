import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:houseapp/home/home_screen_controller.dart';
import 'package:houseapp/home/user_section/user_card.dart';
import 'package:houseapp/theme.dart';

class UserList extends GetView<HomeScreenController> {
  const UserList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenController>(
      builder: (controller) => ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: controller.displayUser.length,
        itemBuilder: (context,index) {
          var user = controller.displayUser[index];
          return  UserCard(
            user : user,
            index : index,
            onDeletePressed: () {
              controller.deleteUser(index);
            },
          );
        },
      ),
    );
  }
}
