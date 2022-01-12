import 'package:flutter/material.dart';
import 'package:minicraft/data/data.dart';
import 'package:minicraft/sizeConfig.dart';
import 'package:minicraft/ui/screens/generalWidgets/myAppBar.dart';
import 'package:minicraft/ui/screens/home/myHomePage.dart';
import 'package:minicraft/ui/screens/home/widgets/appBarLeading.dart';
import 'package:minicraft/ui/screens/home/widgets/appbarAction.dart';
import 'package:minicraft/ui/screens/myAccount/myAccount.dart';
import 'package:minicraft/ui/screens/myAccount/widgets/accountAppBar.dart';
import 'package:minicraft/ui/screens/myBookings/allBookings.dart';
import 'package:minicraft/ui/screens/signUp/widgets/inputField.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class MainMenu extends StatefulWidget {
  MainMenu({Key? key}) : super(key: key);

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  final _textControllor = TextEditingController();

  final List _names = [
    "Health",
    "Repair Shops",
    "Car Wash",
    "Beauty",
    "Food",
    "Public Service",
    "Car Rental",
    "Hotels",
    "Taxi"
  ];

  final List _icons = [
    Icons.health_and_safety_outlined,
    Icons.handyman_outlined,
    Icons.local_car_wash_outlined,
    Icons.content_cut_outlined,
    Icons.food_bank_outlined,
    Icons.supervisor_account_rounded,
    Icons.car_rental,
    Icons.hotel_outlined,
    Icons.local_taxi_outlined,
  ];

  int _pageIndex = 0;

  final _textController = TextEditingController();

  final _formKey = GlobalKey();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    List _pages = [
      // MyHomePage(formKey: _formKey, textController: _textController),
      MainMenuPage(
          textControllor: _textControllor, icons: _icons, names: _names),
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
      appBar: _pageIndex != 0 ? _appBars[_pageIndex] : null,
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

class MainMenuPage extends StatelessWidget {
  const MainMenuPage({
    Key? key,
    required TextEditingController textControllor,
    required List icons,
    required List names,
  })  : _textControllor = textControllor,
        _icons = icons,
        _names = names,
        super(key: key);

  final TextEditingController _textControllor;
  final List _icons;
  final List _names;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          toolbarHeight: getHeight(80),
          backgroundColor: Colors.white,
          expandedHeight: 80,
          elevation: 0,
          flexibleSpace: FlexibleSpaceBar(
            titlePadding: EdgeInsets.fromLTRB(
                getWidth(20), getHeight(40), getWidth(20), 10),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      "Good Morning",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Lazizbek Fayziev",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  height: getWidth(60),
                  width: getWidth(60),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://chpic.su/_data/stickers/m/MemojiiOS13/MemojiiOS13_005.webp"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(
              horizontal: getWidth(20), vertical: getHeight(10)),
          sliver: SliverToBoxAdapter(
            child: InputField(
                myController: _textControllor, hintText: "Search the Merchant"),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(
              horizontal: getWidth(20), vertical: getHeight(10)),
          sliver: SliverToBoxAdapter(
            child: Container(
              height: getHeight(200),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://www.workinsync.io/wp-content/uploads/2021/08/Image-2-min.png"),
                ),
              ),
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(
              horizontal: getWidth(20), vertical: getHeight(10)),
          sliver: const SliverToBoxAdapter(
            child: Text(
              "Categories",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(
            horizontal: getWidth(20),
            vertical: getHeight(10),
          ),
          sliver: SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              crossAxisCount: 3,
            ),
            delegate: SliverChildBuilderDelegate((context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "/home");
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.shade200,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        _icons[index],
                        color: Colors.blue.shade300,
                        size: getHeight(50),
                      ),
                      Text(
                        _names[index],
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade800),
                      ),
                    ],
                  ),
                ),
              );
            }, childCount: 9),
          ),
        ),
      ],
    );
  }
}
