import 'package:flutter/material.dart';
import 'package:minicraft/ui/screens/home/widgets/eachCompany.dart';
import 'package:minicraft/ui/screens/home/widgets/infoContainer.dart';

import '../../../sizeConfig.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    Key? key,
    required GlobalKey<State<StatefulWidget>> formKey,
    required TextEditingController textController,
  })  : _formKey = formKey,
        _textController = textController,
        super(key: key);

  final GlobalKey<State<StatefulWidget>> _formKey;
  final TextEditingController _textController;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          automaticallyImplyLeading: false,
          actions: const [SizedBox()],
          backgroundColor: Colors.transparent,
          expandedHeight: getHeight(300),
          flexibleSpace: FlexibleSpaceBar(
            background: Container(
              padding: EdgeInsets.all(getHeight(15)),
              child: SingleChildScrollView(
                child: InfoContainer(
                    formKey: _formKey, textController: _textController),
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return Container(
              margin: EdgeInsets.all(
                getHeight(15),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Medical Shop"),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "View All",
                            style: TextStyle(color: Colors.blue),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: getHeight(200),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/about");
                          },
                          child: EachCompany(
                            index: index,
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            );
          }, childCount: 6),
        ),
      ],
    );
  }
}
