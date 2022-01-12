import 'package:flutter/material.dart';
import 'package:minicraft/sizeConfig.dart';
import 'package:minicraft/ui/screens/home/myHomePage.dart';
import 'package:minicraft/ui/screens/home/widgets/appBarLeading.dart';
import 'package:minicraft/ui/screens/home/widgets/appbarAction.dart';
import 'package:minicraft/ui/screens/generalWidgets/myAppBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey();

  final _textController = TextEditingController();

  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      key: _key,
      backgroundColor: Colors.white,
      appBar: MyAppBar(
        leading: const AppbarLeading(),
        action: AppbarAction(),
      ),
      body: MyHomePage(formKey: _formKey, textController: _textController),
    );
  }
}
