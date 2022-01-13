import 'package:flutter/material.dart';
import 'package:minicraft/ui/screens/about/aboutCompany.dart';
import 'package:minicraft/ui/screens/bookNow/bookNow.dart';
import 'package:minicraft/ui/screens/entryPages/entroduction.dart';
import 'package:minicraft/ui/screens/home/homePage.dart';
import 'package:minicraft/ui/screens/mainMenu/mainMenu.dart';
import 'package:minicraft/ui/screens/myTicket/myTicket.dart';
import 'package:minicraft/ui/screens/signIn/signIn.dart';
import 'package:minicraft/ui/screens/signUp/signUp.dart';

import 'data/data.dart';

class RouterGenerator {
  static generateRoute(RouteSettings settings) {
    // final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => Intro(),
        );

      case '/signIn':
        return MaterialPageRoute(
          builder: (context) => SignIn(),
        );
      case '/signUp':
        return MaterialPageRoute(
          builder: (context) => SignUp(),
        );
      case '/mainMenu':
        return MaterialPageRoute(
          builder: (context) => const MainMenu(),
        );
      case '/home':
        return MaterialPageRoute(
          builder: (context) => HomePage(),
        );
      case '/about':
        final args = settings.arguments as AboutCompany;

        return MaterialPageRoute(
          builder: (context) => AboutComp(
            name: args.name,
            location: args.location,
            pic: args.pic,
            tel: args.tel,
          ),
        );
      case '/bookNow':
        final args = settings.arguments as AboutCompany;

        return MaterialPageRoute(
          builder: (context) => BookNow(
            name: args.name,
            location: args.location,
            pic: args.pic,
            tel: args.tel,
          ),
        );
      case '/myTicket':
        final args = settings.arguments as Ticket;

        return MaterialPageRoute(
          builder: (context) => MyTicket(
            name: args.name,
            pic: args.pic,
          ),
        );
    }
  }
}
