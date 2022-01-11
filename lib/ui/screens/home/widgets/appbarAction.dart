import 'package:flutter/material.dart';

import '../../../../sizeConfig.dart';

class AppbarAction extends StatefulWidget {
  AppbarAction({Key? key}) : super(key: key);

  @override
  State<AppbarAction> createState() => _AppbarActionState();
}

class _AppbarActionState extends State<AppbarAction> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: getWidth(15.0)),
      child: InkWell(
        onTap: () {},
        child: const CircleAvatar(
          backgroundImage: NetworkImage("https://source.unsplash.com/random"),
        ),
      ),
    );
  }
}
