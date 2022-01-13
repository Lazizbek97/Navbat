import 'package:flutter/material.dart';
import 'package:minicraft/data/data.dart';

import '../../../../sizeConfig.dart';

class FloatingButton extends StatelessWidget {
  FloatingButton({
    Key? key,
    required this.name,
    required this.pic,
  }) : super(key: key);
  String name;
  String pic;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: getHeight(20)),
      child: Container(
        height: getHeight(60),
        width: getWidth(360),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            getHeight(25),
          ),
        ),
        child: FloatingActionButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(getWidth(15)),
          ),
          onPressed: () {
            reserved.add(Ticket(name, pic));
            Navigator.pushNamed(
              context,
              "/myTicket",
              arguments: Ticket(name, pic),
            );
          },
          child: const Text("Book Queue Now"),
        ),
      ),
    );
  }
}
