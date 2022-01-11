import 'package:flutter/material.dart';
import 'package:minicraft/ui/screens/bookNow/widgets/backButton.dart';

import '../../../../sizeConfig.dart';

class AppBarforDetails extends StatelessWidget implements PreferredSizeWidget {
  const AppBarforDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: const backButton(),
      centerTitle: true,
      title: const Text(
        "Your booking Ticket",
        style: TextStyle(color: Colors.black),
      ),
      actions: [
        IconButton(
          iconSize: getWidth(30),
          onPressed: () {},
          icon: const Icon(
            Icons.delete_outline,
            color: Colors.red,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => throw UnimplementedError();
}
