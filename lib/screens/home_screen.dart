import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_fridge/screens/login_screen.dart';
import 'package:the_fridge/utils/jsonClass.dart';
import 'package:the_fridge/utils/controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final GlobalController globalController = Get.put(GlobalController(), permanent: true);
    JsonClass myData = globalController.getData();
    print('coso: ${myData.data?.userData?.name}');

    return Scaffold(
      body: Center(
      child: ElevatedButton(
        onPressed: () {
          Get.to(const LoginScreen());
        },
        child: const Text('Login screen')),
    ));
  }
}