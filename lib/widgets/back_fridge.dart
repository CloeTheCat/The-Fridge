import 'package:flutter/material.dart';

class BackFridge extends StatelessWidget {
  const BackFridge({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.9,
          width: MediaQuery.of(context).size.width,
          constraints: const BoxConstraints(maxWidth: 600),
          decoration: BoxDecoration(
            color: Colors.blueGrey.shade300,
            borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  color: Colors.white,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 30, left: 10, right: 10, bottom: 10),
                        width: 20,
                        color: Colors.blueGrey.shade300,
                      ), 
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          child: const Image(image: AssetImage('assets/images/notes.jpg')),
                        )
                      )
                    ]
                  )
                ),
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
                    color: Colors.white,
                    child: Align(
                      alignment: Alignment.centerLeft, 
                      child: Container(
                        margin: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
                        constraints: const BoxConstraints(maxWidth: 20),
                        width: 20,
                        color: Colors.blueGrey.shade300,
                      ),
                    )
                  ),
                )
              ],
            ),
          )
        )
      ]
    );
  }
}