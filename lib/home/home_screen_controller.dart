import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import '../data/user_data.dart';

class HomeScreenController extends GetxController{

  List<UserData> displayUser = [];

  @override
  void onInit() {
    displayUser = UserData.userList;
    super.onInit();
  }
}