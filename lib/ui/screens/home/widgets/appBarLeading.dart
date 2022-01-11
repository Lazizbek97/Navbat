import 'package:flutter/material.dart';

import '../../../../sizeConfig.dart';

class AppbarLeading extends StatelessWidget {
  const AppbarLeading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getWidth(15.0)),
      child: Row(
        children: [
          const Icon(Icons.location_on),
          PopupMenuButton(
            child: Row(
              children: const [
                Text("Tashkent"),
                Icon(Icons.keyboard_arrow_down)
              ],
            ),
            itemBuilder: (context) => const [
              PopupMenuItem(
                child: Text(
                  "Samarqand",
                ),
              ),
              PopupMenuItem(
                child: Text(
                  "Qarshi",
                ),
              ),
              PopupMenuItem(
                child: Text(
                  "Farg'ona",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
