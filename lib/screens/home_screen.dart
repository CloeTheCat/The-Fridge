import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_fridge/screens/login_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
        onPressed: () {Get.to(const LoginScreen());}, 
        child: const Text('Login screen')
      ),
      
    );
  }
}