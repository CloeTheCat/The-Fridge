import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_fridge/json_prova/productmodule/controllers/product_controller.dart';
import 'package:the_fridge/json_prova/productmodule/models/product_model.dart';
import 'package:the_fridge/screens/home_screen.dart';

class LoginScreen extends StatelessWidget {
  // final BoardData data;
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final DataController c = Get.put(DataController());
    // print(c);
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
