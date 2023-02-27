import 'package:flutter/material.dart';
import 'package:the_fridge/screens/home_screen.dart';
import 'package:get/get.dart';
import 'package:the_fridge/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const isLogged = true;
    
    return const GetMaterialApp(
      home: isLogged ? HomeScreen() : LoginScreen(),
      // title: "The Fridge",
      // debugShowCheckedModeBanner: false,
    );
  }
}

// Future.delayed(const Duration(milliseconds: 2000), () {isLogged = true;});
// Widget showPage() {
//   if (isLogged == true) {return HomeScreen();}
//   else {return LoginScreen();}
// };