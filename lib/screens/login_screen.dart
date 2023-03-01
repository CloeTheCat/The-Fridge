import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_fridge/screens/home_screen.dart';
import 'package:the_fridge/widgets/back_fridge.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade500,
      body: Stack(
        alignment: Alignment.center,
        children: <Widget> [
          const BackFridge(),
          Align(
            alignment: const Alignment(0,0.5),
            child: ElevatedButton(
              onPressed: () {Get.to(const HomeScreen());}, 
              child: const Text('Home screen')
            ),
          )
        ],
      )
    );
  }
}