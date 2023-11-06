import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  MaterialColor? themeColor;
  final Rx<ThemeData> themeData = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      background: Color.fromARGB(255, 29, 20, 20),
      primary: Colors.grey[900]!,
      secondary: Colors.grey[800]!,
      error: Colors.red,
    ),
  ).obs;

  @override
  void onInit() {
    super.onInit();
  }
}
