import 'package:flutter/material.dart';
import 'package:minicraft/ui/screens/bookNow/widgets/backButton.dart';
import 'package:minicraft/ui/screens/bookNow/widgets/floatingButton.dart';
import 'package:minicraft/ui/screens/bookNow/widgets/infoDetials.dart';

import '../../../sizeConfig.dart';

class BookNow extends StatelessWidget {
  const BookNow({
    Key? key,
    required this.name,
    required this.location,
    required this.pic,
    required this.tel,
  }) : super(key: key);

  final String name;
  final String location;
  final String pic;
  final String tel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: const Alignment(-0.9, -0.8),
            height: getHeight(350),
            width: double.infinity,
            decoration: BoxDecoration(
              image:
                  DecorationImage(fit: BoxFit.cover, image: NetworkImage(pic)),
            ),
            child: const backButton(),
          ),
          InfoDetails(
            name: name,
          )
        ],
      ),
      floatingActionButton: FloatingButton(
        name: name,
        pic: pic,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
