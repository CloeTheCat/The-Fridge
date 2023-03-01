import 'package:flutter/material.dart';
import 'package:the_fridge/widgets/board.dart';
import 'package:the_fridge/components/utils/get_data.dart';

class BoardsView extends StatelessWidget {
  const BoardsView({super.key});

  @override
  Widget build(BuildContext context) {
    final data = GetData();
    // print(data);

    return Expanded(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 600),
        margin: const EdgeInsets.only(top: 10),
        height: MediaQuery.of(context).size.height,
        child: boardsList(context),
      ),
    );
  }
}

Widget boardsList(BuildContext context) {
  return ListView.builder(
    padding: const EdgeInsets.all(8),
    shrinkWrap: true,
    physics: const ClampingScrollPhysics(),
    itemCount: 5, //boards.length,
    itemBuilder: (BuildContext context, int index) {
      return const BoardContainer();
    },
  );
}
