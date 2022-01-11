import 'package:flutter/material.dart';

class MyDrawerPage extends StatelessWidget {
  MyDrawerPage({Key? key, required this.func}) : super(key: key);
  final MyDrawerPage func;
  @override
  Widget build(BuildContext context) {
    return Drawer();
  }
}
