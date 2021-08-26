import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_demo/data/models/user_models.dart';

class FirebaseInstance {
  static final _instance = FirebaseFirestore.instance;

  static Stream<List<UserModels>> getUserData() {
    return _instance
        .collection('userData')
        .snapshots()
        .map((QuerySnapshot query) {
      List<UserModels> userList = [];
      query.docs.forEach((element) {
        userList.add(UserModels.fromMap(element.data()));
      });
      return userList;
    });
  }
}
