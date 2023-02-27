import 'package:flutter/material.dart';

class BoardContainer extends StatelessWidget {
  const BoardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 600,
      color: Colors.amber,
      child: Column(
        children: const [
          Center(
            child: Text('Title'),
          ),
          Center()
        ],
      ),
    );
  }
}