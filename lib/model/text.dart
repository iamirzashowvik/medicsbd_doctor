import 'package:flutter/material.dart';

class TextBlackB extends StatelessWidget {
  final String text;
  final double size;
  TextBlackB(this.text, this.size);
  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
          fontSize: size,
          fontWeight: FontWeight.bold,
          fontFamily: 'Montserrat',
          color: Colors.black,
        ));
  }
}
