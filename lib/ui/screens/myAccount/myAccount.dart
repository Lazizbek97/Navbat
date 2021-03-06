import 'package:flutter/material.dart';
import 'package:minicraft/data/data.dart';
import 'package:minicraft/sizeConfig.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                radius: getWidth(60),
                backgroundColor: Colors.transparent,
                backgroundImage: const NetworkImage(
                    "https://chpic.su/_data/stickers/m/MemojiiOS13/MemojiiOS13_005.webp"),
              ),
              Text(
                userData['name'],
                style: TextStyle(
                    fontSize: getWidth(25.0), fontWeight: FontWeight.bold),
              ),
              Text(userData['number'])
            ],
          ),
        ),
        Expanded(
          flex: 7,
          child: Column(
            children: [
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.person),
                title: const Text("Personal Data"),
                trailing: const Icon(Icons.keyboard_arrow_right_outlined),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.settings),
                title: const Text("Settings"),
                trailing: const Icon(Icons.keyboard_arrow_right_outlined),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.archive_outlined),
                title: const Text("History"),
                trailing: const Icon(Icons.keyboard_arrow_right_outlined),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.security_outlined),
                title: const Text("Security"),
                trailing: const Icon(Icons.keyboard_arrow_right_outlined),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.help_outline_outlined),
                title: const Text("Help"),
                trailing: const Icon(Icons.keyboard_arrow_right_outlined),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.info_outline),
                title: const Text("About"),
                trailing: const Icon(Icons.keyboard_arrow_right_outlined),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(
                  Icons.add_business_outlined,
                  color: Colors.cyan,
                ),
                title: const Text(
                  "Business Account",
                  style: TextStyle(color: Colors.cyan),
                ),
                trailing: const Icon(Icons.keyboard_arrow_right_outlined),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(
                  Icons.logout_outlined,
                  color: Colors.red,
                ),
                title: const Text(
                  "Logout",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
