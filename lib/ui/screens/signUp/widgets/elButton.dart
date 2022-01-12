import 'package:flutter/material.dart';

import '../../../../sizeConfig.dart';

class ElButton extends StatelessWidget {
  ElButton({Key? key, required this.isAccepted, required this.buttonName})
      : super(key: key);
  String buttonName;
  bool isAccepted = false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isAccepted
          ? () {
              Navigator.pushReplacementNamed(context, "/mainMenu");
            }
          : null,
      onLongPress: isAccepted ? () {} : null,
      child: Text(buttonName),
      style: ElevatedButton.styleFrom(
        primary: Colors.blue.shade300,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            getWidth(15),
          ),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: getWidth(150),
          vertical: getWidth(20),
        ),
      ),
    );
  }
}
