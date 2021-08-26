import 'package:firebase_demo/data/database/firebase_db.dart';
import 'package:firebase_demo/data/models/user_models.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

class UserController extends GetxController {
  RxBool userLoader = RxBool(true);
  RxList<UserModels> userList = RxList<UserModels>();

  @override
  void onInit() {
    super.onInit();
    userList.bindStream(FirebaseInstance.getUserData());
  }
}
