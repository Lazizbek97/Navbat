import 'package:flutter/material.dart';
import 'package:minicraft/data/data.dart';
import 'package:minicraft/sizeConfig.dart';
import 'package:minicraft/ui/screens/about/widgets/actionWidget.dart';
import 'package:minicraft/ui/screens/about/widgets/comments.dart';
import 'package:minicraft/ui/screens/about/widgets/compName.dart';
import 'package:minicraft/ui/screens/about/widgets/detailedInfo.dart';
import 'package:minicraft/ui/screens/about/widgets/gallery.dart';
import 'package:minicraft/ui/screens/about/widgets/leadingWidget.dart';
import 'package:minicraft/ui/screens/about/widgets/location.dart';
import 'package:minicraft/ui/screens/generalWidgets/myAppBar.dart';

class AboutComp extends StatefulWidget {
  const AboutComp({
    Key? key,
    required this.name,
    required this.location,
    required this.pic,
    required this.tel,
  }) : super(key: key);

  static int controllerIndex = 0;
  final String name;
  final String location;
  final String pic;
  final String tel;

  // final ScreenArguments arguments;

  @override
  State<AboutComp> createState() => _AboutCompState();
}

class ScreenArguments {}

int menuIndex = 0;
PageController _controller = PageController(initialPage: 0, keepPage: false);

class _AboutCompState extends State<AboutComp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        leading: const LeadingWidget(),
        action: const ActionWidget(),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(
                getWidth(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CompName(
                    location: widget.location,
                    name: widget.name,
                    pic: widget.pic,
                  ),
                  DetailedInfo(
                    location: widget.location,
                    tel: widget.tel,
                  ),
                  const Divider(),
                ],
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    myBottons("Comments", 0),
                    myBottons("Location", 1),
                    myBottons("Gallery", 2),
                  ],
                ),
                Expanded(
                  child: PageView(
                    controller: _controller,
                    onPageChanged: (value) {
                      setState(() {
                        menuIndex = value;
                      });
                    },
                    children: const <Widget>[
                      Comments(),
                      Location(),
                      Gallery(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        extendedPadding: EdgeInsets.symmetric(horizontal: getWidth(100)),
        onPressed: () {
          Navigator.pushNamed(context, "/bookNow",
              arguments: AboutCompany(
                  widget.name, widget.location, widget.pic, widget.tel));
        },
        label: const Text("Book a Slot"),
        icon: const Icon(Icons.add_box_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  myBottons(String text, int index) => ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          primary:
              menuIndex == index ? Colors.blue.shade50 : Colors.transparent,
          shape: const StadiumBorder(),
          padding: EdgeInsets.symmetric(
            horizontal: menuIndex == index ? getWidth(60) : getWidth(20),
          ),
        ),
        onPressed: () {
          setState(() {
            menuIndex = index;
            _controller.animateToPage(index,
                duration: const Duration(milliseconds: 3),
                curve: Curves.bounceIn);
          });
        },
        child: Text(
          "$text ",
          style: const TextStyle(color: Colors.black),
        ),
      );
}
