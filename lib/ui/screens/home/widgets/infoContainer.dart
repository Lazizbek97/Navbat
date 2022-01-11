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
            "https://source.unsplash.com/random",
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getHeight(30.0), vertical: getHeight(10)),
          child: Text(
            "No Need to wait in pandemic. Book your Virtuel Slot right now!",
            style:
                TextStyle(height: getHeight(2.0), fontWeight: FontWeight.bold),
          ),
        ),
        SearchForm(formKey: _formKey, textController: _textController),
      ],
    );
  }
}
