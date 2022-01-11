import 'package:flutter/material.dart';
import 'package:minicraft/sizeConfig.dart';
// import 'package:google_fonts/google_fonts.dart';

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> with SingleTickerProviderStateMixin {
  final List _images = [
    "assets/images/timeSave.png",
    "assets/images/cloudInternet.png",
    "assets/images/web.png"
  ];
  List texts = [
    "  Save your\nvaluable time",
    "Book all things\n   Beforehand",
    "Save all data\n      in Safe"
  ];
  late final TabController? _controller;

  @override
  void initState() {
    _controller = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            onPageChanged: (value) => setState(() {
              _controller!.index = value;
            }),
            itemCount: 3,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Container(
                    height: getHeight(700),
                    decoration: BoxDecoration(),
                    child: Image.asset(
                      _images[index],
                      fit: BoxFit.contain,
                    ),
                  ),
                  Positioned(
                    bottom: getHeight(20),
                    left: getWidth(180),
                    child: TabPageSelector(
                      color: Colors.white,
                      controller: _controller,
                      selectedColor: Colors.green,
                    ),
                  ),
                  Positioned(
                    bottom: getHeight(100),
                    left: getWidth(80),
                    child: Text(
                      texts[index],
                      style: const TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.amberAccent,
                          fontSize: 35.0,
                          fontFamily: "Raleway"),
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
