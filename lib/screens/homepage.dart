import 'package:firebase_demo/data/controllers/userController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'user_card.dart';

class HomePage extends StatelessWidget {
  final UserController controller = Get.put(UserController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FireBase Demo"),
        centerTitle: true,
      ),
      body: GetX<UserController>(
        builder: (_) {
          // if() {

          // }
          return Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: controller.userList.length,
                itemBuilder: (c, i) {
                  return CardWidget(
                    data: controller.userList[i],
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
