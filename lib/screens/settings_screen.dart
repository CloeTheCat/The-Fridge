import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_fridge/screens/home_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
          onPressed: () {
            Get.to(const HomeScreen());
          },
          child: const Text('Home screen')),
    ));
  }
}
