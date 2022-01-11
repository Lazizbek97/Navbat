import 'package:flutter/material.dart';

import '../../../../sizeConfig.dart';

class Comments extends StatelessWidget {
  const Comments({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(getWidth(15)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: getWidth(15)),
                            child: CircleAvatar(
                              radius: getHeight(22),
                              backgroundImage: const NetworkImage(
                                  "https://source.unsplash.com/random"),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Lazizbek Fayziev"),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Text(
                        "Today at 12:09",
                        style: TextStyle(fontSize: 12.0),
                      ),
                    ],
                  ),
                  const FittedBox(
                    fit: BoxFit.cover,
                    child: Text(
                        "Everything is just super and time saving! \nThat's what we already needed"),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
