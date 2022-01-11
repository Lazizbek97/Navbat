import 'package:flutter/material.dart';

import '../../../../sizeConfig.dart';

class QueueInfo extends StatelessWidget {
  String number;
  String numberInfo;
  String aboutQueue;
  QueueInfo({
    Key? key,
    required this.aboutQueue,
    required this.number,
    required this.numberInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getHeight(100),
      width: getWidth(180),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Text(
                number,
                style: TextStyle(
                    fontSize: getWidth(25),
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.only(left: getWidth(25)),
                child: Text(numberInfo),
              )
            ],
          ),
          Text(aboutQueue),
        ],
      ),
    );
  }
}
