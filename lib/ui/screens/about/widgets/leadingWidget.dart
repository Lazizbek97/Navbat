import 'package:flutter/material.dart';

class LeadingWidget extends StatelessWidget {
  const LeadingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, "/");
          },
          icon: const Icon(Icons.keyboard_arrow_left_sharp),
        ),
        const Text(
          "Med Pharma",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
        ),
      ],
    );
  }
}
