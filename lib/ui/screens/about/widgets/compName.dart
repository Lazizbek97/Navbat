import 'package:flutter/material.dart';

import '../../../../sizeConfig.dart';

class CompName extends StatelessWidget {
  const CompName({
    Key? key,
    required this.name,
    required this.location,
    required this.pic,
  }) : super(key: key);

  final String name;
  final String location;
  final String pic;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: getHeight(80),
              width: getWidth(120),
              margin: EdgeInsets.only(right: getWidth(30)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(pic),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                Text("Medical Store | $location"),
              ],
            )
          ],
        ),
      ],
    );
  }
}
