import 'package:flutter/material.dart';
import 'package:the_fridge/widgets/board.dart';
import 'package:the_fridge/components/utils/get_data.dart';

class BoardsView extends StatelessWidget {
  const BoardsView({super.key});

  @override
  Widget build(BuildContext context) {
    final data = GetData();
    print(data);

    return Container(
      constraints: const BoxConstraints(maxWidth: 600),
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      height: MediaQuery.of(context).size.height * 0.7,
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
