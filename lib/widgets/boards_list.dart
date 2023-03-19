import 'package:flutter/material.dart';
import 'package:the_fridge/utils/jsonClass.dart';
import 'package:the_fridge/utils/theme.dart';
import 'package:the_fridge/widgets/board.dart';

class BoardsView extends StatelessWidget {
  final Data? boardsData;
  const BoardsView({super.key, required this.boardsData});

  @override
  Widget build(BuildContext context) {
    // print(data);

    return Expanded(
      child: ListView(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            alignment: Alignment.topCenter,
            child: Text(
              "${boardsData?.userData?.name}'s Fridge. Total boards: ${boardsData?.boards?.length.toString()}", 
              style: CustomTextStyles.boardInfo,
            )
          ),
          Container(
            constraints: const BoxConstraints(maxWidth: 600),
            margin: const EdgeInsets.only(top: 10),
            height: MediaQuery.of(context).size.height,
            child: boardsList(context),
          ),
        ],
      )
    );
  }

  Widget boardsList(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      // shrinkWrap: true,
      // physics: const ClampingScrollPhysics(),
      itemCount: boardsData?.boards?.length,
      itemBuilder: (BuildContext context, int index) {
        return const BoardContainer();
      },
    );
  }
}



// Widget boardsList(BuildContext context) {
//   return ListView.builder(
//     padding: const EdgeInsets.all(8),
//     shrinkWrap: true,
//     physics: const ClampingScrollPhysics(),
//     itemCount: 5, //boards.length,
//     itemBuilder: (BuildContext context, int index) {
//       return const BoardContainer();
//     },
//   );
// }