import 'package:flutter/material.dart';
import 'package:minicraft/ui/screens/about/aboutCompany.dart';
import 'package:minicraft/ui/screens/bookNow/bookNow.dart';
import 'package:minicraft/ui/screens/entryPages/entroduction.dart';
import 'package:minicraft/ui/screens/home/homePage.dart';
import 'package:minicraft/ui/screens/myTicket/myTicket.dart';

class RouterGenerator {
  static generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => Intro(),
        );
      case '/about':
        return MaterialPageRoute(
          builder: (context) => const AboutComp(),
        );
      case '/bookNow':
        return MaterialPageRoute(
          builder: (context) => const BookNow(),
        );
      case '/myTicket':
        return MaterialPageRoute(
          builder: (context) => MyTicket(),
        );
    }
  }
}
