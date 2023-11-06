import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:tiklus/constants/responsice_size.dart';
import 'package:tiklus/controllers/theme_controller.dart';
import 'package:tiklus/screens/authentication/screen/login_screen.dart';
import 'package:tiklus/screens/authentication/widgets/button_lable_text.dart';
import 'package:tiklus/screens/authentication/widgets/rectangular_buttons.dart';

class PreLoginScreen extends StatefulWidget {
  const PreLoginScreen({super.key});

  @override
  State<PreLoginScreen> createState() => _PreLoginScreenState();
}

class _PreLoginScreenState extends State<PreLoginScreen> {
  ThemeController _themeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _themeController.themeData.value.colorScheme.background,
      body: Column(
        children: [
          Expanded(
            child: Lottie.asset("assets/lottie/animation_lolnhm6g.json"),
          ),
          RectangularButtons(
            color: Colors.white,
            width: ResponsiveSize.screenWidth(342),
            height: ResponsiveSize.screenHeight(64),
            borderRadius: 4,
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const LoginScreen(),
              ));
            },
            child: Center(
              child: buttonLableText(
                text: "Login",
                color: _themeController.themeData.value.colorScheme.secondary,
                fontSize: 18,
                isBold: true,
              ),
            ),
          ),
          SizedBox(
            height: ResponsiveSize.screenHeight(24),
          ),
          RectangularButtons(
            color: _themeController.themeData.value.colorScheme.secondary,
            width: ResponsiveSize.screenWidth(342),
            height: ResponsiveSize.screenHeight(64),
            borderRadius: 4,
            child: Center(
              child: buttonLableText(
                text: "Register",
                color: Colors.white,
                fontSize: 18,
                isBold: true,
              ),
            ),
          ),
          SizedBox(
            height: ResponsiveSize.screenHeight(36),
          ),
        ],
      ),
    );
  }
}
