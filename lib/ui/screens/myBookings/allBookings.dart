import 'package:flutter/material.dart';
import 'package:minicraft/sizeConfig.dart';
import 'package:minicraft/ui/screens/home/myHomePage.dart';
import 'package:minicraft/ui/screens/myBookings/widgets/bookedList.dart';
import 'package:minicraft/ui/screens/myBookings/widgets/bookedMenu.dart';

class MyAllBookings extends StatefulWidget {
  const MyAllBookings({Key? key}) : super(key: key);

  @override
  _MyAllBookingsState createState() => _MyAllBookingsState();
}

class _MyAllBookingsState extends State<MyAllBookings> {
  @override
  // final _formKey = GlobalKey();

  // final _textController = TextEditingController();
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          automaticallyImplyLeading: false,
          actions: const [SizedBox()],
          collapsedHeight: getHeight(250),
          backgroundColor: Colors.transparent,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: Text(
              "Manage all your slot bookings!",
              style: TextStyle(height: getHeight(2.0), color: Colors.black),
            ),
            background: Container(
              margin: EdgeInsets.fromLTRB(
                getHeight(20),
                getHeight(10),
                getHeight(20),
                getHeight(70),
              ),
              width: double.infinity,
              height: getHeight(150),
              child: Image.network(
                "https://source.unsplash.com/random",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        BookedMenu(
          bookedMenuTitle: "Latest Bookings",
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return const BookedList();
          }, childCount: 2),
        ),
        BookedMenu(
          bookedMenuTitle: "Previous Bookings",
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return const BookedList();
          }, childCount: 2),
        ),
      ],
    );
  }
}
