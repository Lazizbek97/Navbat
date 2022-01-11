import 'package:flutter/material.dart';

class SearchForm extends StatelessWidget {
  const SearchForm({
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
    return Form(
      key: _formKey,
      child: TextFormField(
        controller: _textController,
        decoration: const InputDecoration(
            focusColor: Colors.amberAccent,
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            hintText: "Search",
            hintStyle: TextStyle(color: Colors.black)),
      ),
    );
  }
}
