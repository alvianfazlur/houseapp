import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:houseapp/data/user_data.dart';

class DetailUserController extends GetxController {

  late final UserData user;
  late final int index;
  TextEditingController nameEditingController = TextEditingController();
  TextEditingController numberEditingController = TextEditingController();
  TextEditingController typeEditingController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void onInit() {
    final Map<String, dynamic> arguments = Get.arguments as Map<String, dynamic>;
    user = arguments['user'];
    index = arguments['index'];
    nameEditingController.text = user.name;
    numberEditingController.text = user.number;
    typeEditingController.text = user.type;
    super.onInit();
  }
}
