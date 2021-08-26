import 'package:firebase_demo/data/controllers/userController.dart';
import 'package:get/instance_manager.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<UserController>(UserController(), permanent: true);
  }
}
