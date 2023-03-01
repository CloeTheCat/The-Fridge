import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_fridge/screens/login_screen.dart';
import 'package:the_fridge/widgets/boards_list.dart';
import 'package:the_fridge/components/utils/board_data/board_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print(BoardData);
    return Scaffold(
        appBar: AppBar(
          title: const Text('The Fridge'),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.message),
                title: Text('Messages'),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
            ],
          ),
        ),
        body: Center(
            child: Container(
                constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(const LoginScreen());
                        },
                        child: const Text('Login screen'),
                      ),
                    ),
                    const BoardsView()
                  ],
                ))));
  }
}
