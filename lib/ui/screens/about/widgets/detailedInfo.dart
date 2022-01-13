import 'package:flutter/material.dart';

import '../../../../sizeConfig.dart';

class DetailedInfo extends StatelessWidget {
  const DetailedInfo({
    Key? key,
    required this.tel,
    required this.location,
  }) : super(key: key);

  final String tel;
  final String location;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getHeight(230),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Address",
            style: TextStyle(
                color: Colors.grey.shade700,
                fontWeight: FontWeight.bold,
                fontSize: 16.0),
          ),
          Text(
            "$location, Binokorlar ko'chasi, 23-uy",
            style: TextStyle(color: Colors.grey.shade600),
          ),
          SizedBox(
            height: getHeight(70),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Working hours",
                      style: TextStyle(
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0),
                    ),
                    Text(
                      "10:00 am - 10:00 pm",
                      style: TextStyle(color: Colors.grey.shade600),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: getWidth(50.0)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Phone",
                        style: TextStyle(
                            color: Colors.grey.shade700,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0),
                      ),
                      Text(
                        tel,
                        style: TextStyle(color: Colors.grey.shade600),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Text(
            "Email",
            style: TextStyle(
                color: Colors.grey.shade700,
                fontWeight: FontWeight.bold,
                fontSize: 18.0),
          ),
          Text(
            "laziz.fayziev@mail.ru",
            style: TextStyle(color: Colors.grey.shade600),
          ),
        ],
      ),
    );
  }
}
