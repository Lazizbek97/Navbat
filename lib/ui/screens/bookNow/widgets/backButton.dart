import 'package:flutter/material.dart';

import '../../../../sizeConfig.dart';

class backButton extends StatelessWidget {
  const backButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: getWidth(45),
      onPressed: () {
        Navigator.pop(context);
      },
      icon: CircleAvatar(
        radius: getWidth(30),
        backgroundColor: Colors.white30,
        child: Icon(
          Icons.keyboard_arrow_left_outlined,
          size: getWidth(30),
          color: Colors.black,
        ),
      ),
    );
  }
}
