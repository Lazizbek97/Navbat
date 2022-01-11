import 'package:flutter/material.dart';

import '../../../../sizeConfig.dart';

class CompName extends StatelessWidget {
  const CompName({
    Key? key,
  }) : super(key: key);

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
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage("https://source.unsplash.com/random"),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Med Pharma",
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                const Text("Medical Store | Chilonzor"),
              ],
            )
          ],
        ),
      ],
    );
  }
}
