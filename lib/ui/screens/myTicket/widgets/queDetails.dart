import 'package:flutter/material.dart';

import '../../../../sizeConfig.dart';

class QueDetails extends StatelessWidget {
  const QueDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getHeight(100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "12",
                style: TextStyle(
                  fontSize: getWidth(24),
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Position in queue",
                style: TextStyle(fontSize: 12.0),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "32",
                style: TextStyle(
                  fontSize: getWidth(24),
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Minutes to go",
                style: TextStyle(fontSize: 12.0),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "5.5",
                style: TextStyle(
                  fontSize: getWidth(24),
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "km distance",
                style: TextStyle(fontSize: 12.0),
              )
            ],
          ),
        ],
      ),
    );
  }
}
