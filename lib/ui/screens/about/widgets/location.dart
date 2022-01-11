import 'package:flutter/material.dart';

import '../../../../sizeConfig.dart';

class Location extends StatelessWidget {
  const Location({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(getHeight(15)),
      height: getHeight(100),
      width: getWidth(300),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          getWidth(15),
        ),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
              "https://miro.medium.com/max/1117/1*rwaJhH6LdFdSuihdJUuZNw.jpeg"),
        ),
      ),
    );
  }
}
