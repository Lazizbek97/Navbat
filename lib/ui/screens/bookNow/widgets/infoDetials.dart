import 'package:flutter/material.dart';
import 'package:minicraft/ui/screens/bookNow/widgets/queueInfo.dart';

import '../../../../sizeConfig.dart';

class InfoDetails extends StatelessWidget {
  const InfoDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getHeight(450),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          getHeight(15),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: getHeight(15)),
            child: Text(
              "Goo International Hospital",
              style: TextStyle(
                fontSize: getWidth(25),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: getHeight(10)),
            child:
                const Text("Mirobod tumani, Taras Shevchenko ko'chasi, 14-uy"),
          ),
          const Divider(
            thickness: 2,
          ),
          Row(
            children: [
              QueueInfo(
                number: "12",
                numberInfo: "People",
                aboutQueue: "In front of you",
              ),
              QueueInfo(
                number: "32",
                numberInfo: "Minutes",
                aboutQueue: "Estimated time until your turn",
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              QueueInfo(
                number: "47",
                numberInfo: "Minutes",
                aboutQueue: "Estimated Trip times",
              ),
              QueueInfo(
                number: "5.6",
                numberInfo: " km",
                aboutQueue: "Distance from your location",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
