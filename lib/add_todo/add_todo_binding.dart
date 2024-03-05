import 'package:get/get.dart';
import 'package:houseapp/add_todo/add_todo_controller.dart';

class AddTodoBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => AddTodoController());
  }

}