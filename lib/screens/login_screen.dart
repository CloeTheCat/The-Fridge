import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_fridge/screens/home_screen.dart';
import 'package:http/http.dart' as http;

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future<http.Response> fetchPhotos(http.Client client) async {
      var x =
          client.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
      print(x);
      return x;
    }

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
