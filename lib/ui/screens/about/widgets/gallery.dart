import 'package:flutter/material.dart';

import '../../../../sizeConfig.dart';

class Gallery extends StatelessWidget {
  const Gallery({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(
        getHeight(10),
      ),
      child: GridView.builder(
          itemCount: 10,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image:
                      NetworkImage("https://source.unsplash.com/random/$index"),
                ),
              ),
            );
          }),
    );
  }
}
