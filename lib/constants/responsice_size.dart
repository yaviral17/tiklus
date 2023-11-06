import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResponsiveSize {
  static double screenWidth(double width) =>
      MediaQuery.of(Get.context!).size.width * (width / 480);
  static double screenHeight(double height) =>
      MediaQuery.of(Get.context!).size.height * (height / 852);
}
