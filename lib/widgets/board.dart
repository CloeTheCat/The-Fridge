import 'package:flutter/material.dart';
import 'package:the_fridge/utils/theme.dart';

class BoardContainer extends StatelessWidget {
  const BoardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.amber,
      margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
      child: Column(
        children: [
          Center(
              child: Padding(
            padding: const EdgeInsets.all(10),
            child: Text('Title', style: CustomTextStyles.boardTitle),
          )),
          Center()
        ],
      ),
    );
  }
}