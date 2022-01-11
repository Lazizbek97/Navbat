import 'package:flutter/material.dart';

import '../../../../sizeConfig.dart';

class EachCompany extends StatelessWidget {
  int index;
  EachCompany({Key? key, required this.index}) : super(key: key);

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
              image: NetworkImage("https://source.unsplash.com/random/$index"),
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
            children: const [
              Text("Med Pharma"),
              Text("Mirobod"),
            ],
          ),
        ),
      ],
    );
  }
}
