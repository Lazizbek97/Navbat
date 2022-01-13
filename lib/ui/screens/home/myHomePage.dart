import 'package:flutter/material.dart';
import 'package:minicraft/data/data.dart';
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
  static int? indexim;

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
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Container(
                margin: EdgeInsets.all(
                  getHeight(15),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${indexim == 3 ? dataBase['Beauty'].keys.toList()[index] : dataBase['Health'].keys.toList()[index]}",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0),
                        ),
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
                        itemCount: indexim == 3
                            ? dataBase['Beauty']
                                    [dataBase['Beauty'].keys.toList()[index]]
                                .length
                            : dataBase['Health']
                                    [dataBase['Health'].keys.toList()[index]]
                                .length,
                        itemBuilder: (context, index1) {
                          return InkWell(
                            onTap: () {
                              Map data;
                              // print(dataBase['Health'].keys.toList());
                              if (indexim == 3) {
                                data = dataBase['Beauty'][dataBase['Beauty']
                                    .keys
                                    .toList()[index]][index1];
                              } else {
                                data = dataBase['Health'][dataBase['Health']
                                    .keys
                                    .toList()[index]][index1];
                              }

                              Navigator.pushNamed(context, "/about",
                                  arguments: AboutCompany(
                                      data['name'],
                                      data['location'],
                                      data['pic'],
                                      data['phone']));
                            },
                            child: EachCompany(
                              dataMap: indexim == 3
                                  ? dataBase['Beauty'][dataBase['Beauty']
                                      .keys
                                      .toList()[index]][index1]
                                  : dataBase['Health'][dataBase['Health']
                                      .keys
                                      .toList()[index]][index1],
                              index: index,
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              );
            },
            childCount: indexim == 3
                ? dataBase['Beauty'].length
                : dataBase['Health'].length,
          ),
        ),
      ],
    );
  }
}
