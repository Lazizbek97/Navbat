import 'package:flutter/material.dart';
import 'package:minicraft/data/data.dart';

import '../../../../sizeConfig.dart';

class EachCompany extends StatelessWidget {
  int index;
  Map dataMap;
  EachCompany({Key? key, required this.index, required this.dataMap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
          width: getWidth(250),
          height: getHeight(150),
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage("${dataMap['pic']}"),
            ),
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 15,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("${dataMap['name']}"),
              Text("${dataMap['location']}"),
            ],
          ),
        ),
      ],
    );
  }
}
