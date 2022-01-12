import 'package:flutter/material.dart';

import '../../../../sizeConfig.dart';

class SocialLinks extends StatelessWidget {
  const SocialLinks({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CircleAvatar(
          radius: getWidth(30),
          child: const Text(
            "G+",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ),
        CircleAvatar(
          radius: getWidth(30),
          child: const Text(
            "f",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 23.0,
            ),
          ),
        ),
      ],
    );
  }
}
