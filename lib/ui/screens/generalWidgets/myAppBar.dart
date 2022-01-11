import 'package:flutter/material.dart';

import '../../../sizeConfig.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  Widget leading;
  Widget action;
  MyAppBar({Key? key, required this.leading, required this.action})
      : super(key: key);
  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      foregroundColor: Colors.black,
      leadingWidth: getWidth(200.0),
      leading: leading,
      actions: [action],
    );
  }
}
