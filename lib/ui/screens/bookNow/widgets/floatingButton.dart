import 'package:flutter/material.dart';

import '../../../../sizeConfig.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({
    Key? key,
  }) : super(key: key);

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
            Navigator.pushNamed(context, "/myTicket");
          },
          child: const Text("Book Queue Now"),
        ),
      ),
    );
  }
}
