import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text,
      {super.key}); //this looks for a variable called text in the class and sets it to the variable passed

  final String
      text; // we added final because the value will not be changed later

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 28,
        color: Colors.white,
      ),
    );
  }
}
