import 'package:flutter/material.dart';
import 'package:minicraft/ui/screens/ticketWithQR/ticketBottomSheet.dart';

import '../../../../sizeConfig.dart';

class BookedList extends StatelessWidget {
  BookedList({
    Key? key,
    required this.name,
    required this.pic,
  }) : super(key: key);

  String name;
  String pic;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(getHeight(20)),
      height: getHeight(140),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: getHeight(8.0)),
                        child: const Text(
                          "Medical Store | Chilonzor",
                          style: TextStyle(fontSize: 12.0),
                        ),
                      ),
                      const Text(
                        "12:40 am 23 January",
                        style: TextStyle(fontSize: 12.0),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          Center(
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: getWidth(110))),
              onPressed: () {
                showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (context) {
                      return const TicketBottomSheet();
                    });
              },
              label: const Text(
                "Show QR Code",
                style: TextStyle(color: Colors.blue),
              ),
              icon: const Icon(
                Icons.qr_code,
                color: Colors.blue,
              ),
            ),
          )
        ],
      ),
    );
  }
}
