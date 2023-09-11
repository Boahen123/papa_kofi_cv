import 'package:cv_application/controllers/field_controller.dart';
import 'package:cv_application/routes/app_pages.dart';
import 'package:cv_application/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.put<FieldController>(FieldController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: appRoutes,
      debugShowCheckedModeBanner: false,
      title: 'Papa Kofi CV',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}
