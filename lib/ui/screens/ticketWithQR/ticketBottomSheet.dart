import 'package:flutter/material.dart';
import 'package:minicraft/sizeConfig.dart';
import 'package:minicraft/ui/screens/myTicket/widgets/qrCode.dart';

class TicketBottomSheet extends StatelessWidget {
  const TicketBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(getWidth(20)),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(35)),
      ),
      child: Column(
        children: [
          const QrCode(),
          Padding(
            padding: EdgeInsets.only(top: getHeight(30)),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: getWidth(120),
                  vertical: getHeight(15),
                ),
                primary: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Cancek Queue"),
            ),
          )
        ],
      ),
    );
  }
}
