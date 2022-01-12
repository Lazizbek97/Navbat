import 'package:flutter/material.dart';
import 'package:minicraft/ui/screens/home/widgets/searchForm.dart';

import '../../../../sizeConfig.dart';

class InfoContainer extends StatelessWidget {
  const InfoContainer({
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          width: double.infinity,
          height: getHeight(150),
          child: Image.network(
            "https://media.istockphoto.com/vectors/people-crowd-in-queue-line-standing-and-waiting-vector-flat-isolated-vector-id1279604834?k=20&m=1279604834&s=170667a&w=0&h=y7JGR8gnmckSJgJkJ3cTGyJZH2cON07cANlYe2wubMk=",
            fit: BoxFit.fitWidth,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getHeight(30.0), vertical: getHeight(5)),
          child: Text(
            "No Need to wait in pandemic. Book your Virtuel Slot right now!",
            style: TextStyle(
                height: getHeight(1.5),
                fontWeight: FontWeight.bold,
                fontSize: 18.0),
          ),
        ),
        SearchForm(formKey: _formKey, textController: _textController),
      ],
    );
  }
}
