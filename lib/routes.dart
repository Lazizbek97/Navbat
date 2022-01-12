import 'package:flutter/material.dart';
import 'package:minicraft/ui/screens/about/aboutCompany.dart';
import 'package:minicraft/ui/screens/bookNow/bookNow.dart';
import 'package:minicraft/ui/screens/entryPages/entroduction.dart';
import 'package:minicraft/ui/screens/getStarted/getStarted.dart';
import 'package:minicraft/ui/screens/home/homePage.dart';
import 'package:minicraft/ui/screens/mainMenu/mainMenu.dart';
import 'package:minicraft/ui/screens/myTicket/myTicket.dart';
import 'package:minicraft/ui/screens/signIn/signIn.dart';
import 'package:minicraft/ui/screens/signUp/signUp.dart';

class RouterGenerator {
  static generateRoute(RouteSettings settings) {
    final args = settings.arguments;
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
          builder: (context) => MainMenu(),
        );
      case '/home':
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
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
