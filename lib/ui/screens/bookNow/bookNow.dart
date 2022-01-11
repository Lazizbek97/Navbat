import 'package:flutter/material.dart';
import 'package:minicraft/ui/screens/bookNow/widgets/backButton.dart';
import 'package:minicraft/ui/screens/bookNow/widgets/floatingButton.dart';
import 'package:minicraft/ui/screens/bookNow/widgets/infoDetials.dart';

import '../../../sizeConfig.dart';

class BookNow extends StatelessWidget {
  const BookNow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: const Alignment(-0.9, -0.8),
            height: getHeight(350),
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://www.ihf-fih.org/wordpress/wp-content/uploads/2020/12/Daegu-Hospital.jpg")),
            ),
            child: const backButton(),
          ),
          const InfoDetails()
        ],
      ),
      floatingActionButton: const FloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
