import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  InputField(
      {Key? key,
      required this.myController,
      required this.hintText,
      required this.isValidated})
      : super(key: key);

  final TextEditingController myController;
  String hintText;
  bool isValidated;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: myController,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        filled: true,
        hintText: hintText,
        errorText: isValidated ? "$hintText can't be empty" : null,
        fillColor: Colors.grey.shade200,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 0, color: Colors.white),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
