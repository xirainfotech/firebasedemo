import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_demo/data/bindings/appBindings.dart';
import 'package:firebase_demo/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Firebase Demo",
      debugShowCheckedModeBanner: false,
      initialBinding: AppBindings(),
      home: HomePage(),
    );
  }
}
