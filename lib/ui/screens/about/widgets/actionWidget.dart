import 'package:flutter/material.dart';

class ActionWidget extends StatelessWidget {
  const ActionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: const Icon(Icons.more_vert_outlined),
    );
  }
}
