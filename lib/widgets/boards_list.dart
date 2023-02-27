import 'package:flutter/material.dart';
import 'package:the_fridge/widgets/board.dart';

class BoardsView extends StatelessWidget {
  const BoardsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: boardsList(context),
    );
  }
}

Widget boardsList(BuildContext context) {
  return ListView.builder(
    padding: const EdgeInsets.all(8),
    itemCount: 4, //boards.length,
    itemBuilder: (BuildContext context, int index) {
      return const BoardContainer();
    },
  );
}
