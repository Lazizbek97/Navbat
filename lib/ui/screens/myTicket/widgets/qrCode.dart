import 'package:flutter/material.dart';
import 'package:minicraft/data/data.dart';
import 'package:minicraft/sizeConfig.dart';

class QrCode extends StatelessWidget {
  const QrCode({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          userData['name'],
          style: const TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Text(
          "Patient",
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.black54,
          ),
        ),
        SizedBox(
          height: getHeight(200),
          width: getHeight(200),
          child: Image.network(
            "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/QR_code_for_mobile_English_Wikipedia.svg/1200px-QR_code_for_mobile_English_Wikipedia.svg.png",
            fit: BoxFit.cover,
          ),
        ),
        const Text(
          "AG123",
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
        const Text("14.01.2022 / 09:30 am")
      ],
    );
  }
}
