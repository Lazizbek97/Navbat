import 'package:flutter/material.dart';

class AccountAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AccountAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: const [SizedBox()],
      title: const Text("My Account"),
      centerTitle: true,
      foregroundColor: Colors.black,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.keyboard_arrow_left_outlined,
        ),
      ),
    );
  }
}
