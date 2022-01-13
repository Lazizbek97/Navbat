import 'package:flutter/material.dart';
import 'package:minicraft/sizeConfig.dart';
import 'package:minicraft/ui/screens/bookNow/widgets/backButton.dart';
import 'package:minicraft/ui/screens/myTicket/widgets/qrCode.dart';
import 'package:minicraft/ui/screens/myTicket/widgets/ticketNumer.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class MyTicket extends StatefulWidget {
  MyTicket({
    Key? key,
    required this.name,
    required this.pic,
  }) : super(key: key);
  String name;
  String pic;
  @override
  State<MyTicket> createState() => _MyTicketState();
}

class _MyTicketState extends State<MyTicket>
    with SingleTickerProviderStateMixin {
  TabController? _tabPageController;

  @override
  void initState() {
    _tabPageController = TabController(length: 2, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const backButton(),
        centerTitle: true,
        title: const Text(
          "Your booking Ticket",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            iconSize: getWidth(30),
            onPressed: () {
              AwesomeDialog(
                context: context,
                dialogType: DialogType.QUESTION,
                title: "Do you want to cancel?",
                desc: "Click Ok button to cancel your reservation",
                btnOkOnPress: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, "/mainMenu", (route) => false);
                },
                btnCancelOnPress: () {},
              ).show();
            },
            icon: const Icon(
              Icons.delete_outline,
              color: Colors.red,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(
                getWidth(25),
              ),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          widget.pic,
                        ),
                      ),
                    ),
                    height: getHeight(180),
                    width: double.infinity,
                  ),
                  Text(
                    widget.name,
                    style: TextStyle(
                      fontSize: getWidth(22),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "Location",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blueAccent,
                    ),
                  ),
                  const Text(
                    "Booked:  at Jan 14, 2022 / 09:30 am",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black38,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.all(
                    getWidth(25),
                  ),
                  padding: EdgeInsets.all(getWidth(10)),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: PageView(
                    onPageChanged: (v) {
                      _tabPageController!.index = v;
                    },
                    children: const [TicketNumer(), QrCode()],
                  ),
                ),
                Positioned(
                  top: getHeight(-4),
                  left: getWidth(180),
                  child: TabPageSelector(
                    color: Colors.blue,
                    indicatorSize: getHeight(15),
                    selectedColor: Colors.white,
                    controller: _tabPageController,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
