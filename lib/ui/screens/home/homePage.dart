import 'package:flutter/material.dart';
import 'package:minicraft/sizeConfig.dart';
import 'package:minicraft/ui/screens/generalWidgets/drawer.dart';
import 'package:minicraft/ui/screens/home/myHomePage.dart';
import 'package:minicraft/ui/screens/home/widgets/appBarLeading.dart';
import 'package:minicraft/ui/screens/home/widgets/appbarAction.dart';
import 'package:minicraft/ui/screens/generalWidgets/myAppBar.dart';
import 'package:minicraft/ui/screens/myAccount/myAccount.dart';
import 'package:minicraft/ui/screens/myAccount/widgets/accountAppBar.dart';
import 'package:minicraft/ui/screens/myBookings/allBookings.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey();

  final _textController = TextEditingController();
  int _currentIndex = 0;
  int _pageIndex = 0;
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    List _pages = [
      MyHomePage(formKey: _formKey, textController: _textController),
      const MyAllBookings(),
      const MyAccount(),
    ];
    List _appBars = [
      MyAppBar(
        leading: const AppbarLeading(),
        action: AppbarAction(),
      ),
      MyAppBar(
        leading: const Center(
          child: Text(
            "All Bookings",
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
        ),
        action: AppbarAction(),
      ),
      const AccountAppBar()
    ];

    return Scaffold(
      key: _key,
      backgroundColor: Colors.white,
      appBar: _appBars[_pageIndex],
      body: _pages[_pageIndex],
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() {
          _currentIndex = i;

          _pageIndex = _currentIndex;
        }),
        items: [
          SalomonBottomBarItem(
            icon: const Icon(Icons.add_box_outlined),
            title: const Text("New Booking"),
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.book_outlined),
            title: const Text("All Bookings"),
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.account_circle_outlined),
            title: const Text("Account"),
          ),
        ],
      ),
    );
  }
}
