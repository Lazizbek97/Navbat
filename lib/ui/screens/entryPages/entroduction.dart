import 'package:flutter/material.dart';
import 'package:minicraft/sizeConfig.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:animate_do/animate_do.dart';

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
    "We appreciate your time",
    "Reserve your slot wherever you're!",
    "All merchants you need are HERE! Join Us!"
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
        Container(
          decoration: const BoxDecoration(
            color: Color(0xffD6E5FA),
          ),
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              PageView.builder(
                onPageChanged: (value) => setState(() {
                  _controller!.index = value;
                }),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      SizedBox(
                        height: getHeight(700),
                        child: Image.asset(
                          _images[index],
                          fit: BoxFit.contain,
                        ),
                      ),
                      Positioned(
                        height: getHeight(150),
                        width: getWidth(300),
                        bottom: getHeight(100),
                        left: getWidth(60),
                        child: Text(
                          texts[index],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              color: Colors.blue.shade200,
                              fontSize: 35.0,
                              fontFamily: "Raleway"),
                        ),
                      ),
                      Positioned(
                        bottom: getHeight(60),
                        right: getWidth(35),
                        child: index == 2
                            ? FadeInUpBig(
                                duration: const Duration(seconds: 2),
                                child: FloatingActionButton.extended(
                                  isExtended: true,
                                  extendedPadding: const EdgeInsets.symmetric(
                                    horizontal: 120,
                                  ),
                                  onPressed: () {
                                    Navigator.pushNamedAndRemoveUntil(
                                        context, "/signIn", (route) => false);
                                  },
                                  label: const Text("Get Started"),
                                ),
                              )
                            : const Text(""),
                      ),
                    ],
                  );
                },
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
            ],
          ),
        ),
      ],
    );
  }
}
