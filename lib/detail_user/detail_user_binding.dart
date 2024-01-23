import 'package:get/get.dart';
import 'detail_user_controller.dart';

class DetailUserBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailUserController());
  }
}