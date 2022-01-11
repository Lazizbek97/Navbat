import 'package:flutter/material.dart';
import 'package:minicraft/ui/screens/myTicket/widgets/queDetails.dart';

import '../../../../sizeConfig.dart';

class TicketNumer extends StatelessWidget {
  const TicketNumer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const QueDetails(),
        Divider(
          color: Colors.black54,
          thickness: 2,
          endIndent: getWidth(15),
          indent: getWidth(15),
        ),
        SizedBox(
          height: getHeight(180),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text(
                "Your Queue Number",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "AG123",
                style: TextStyle(
                  fontSize: 53.0,
                  color: Colors.blue,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
