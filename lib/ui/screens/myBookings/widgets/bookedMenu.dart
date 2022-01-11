import 'package:flutter/material.dart';

import '../../../../sizeConfig.dart';

class BookedMenu extends StatelessWidget {
  String bookedMenuTitle;
  BookedMenu({Key? key, required this.bookedMenuTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getWidth(20)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Divider(
            height: 1.4,
          ),
          Text(
            bookedMenuTitle,
            style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
        ]),
      ),
    );
  }
}
