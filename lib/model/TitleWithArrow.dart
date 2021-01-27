import 'package:flutter/material.dart';

class TitleWithArrow extends StatelessWidget {
  TitleWithArrow(this.title);
  final String title;
  // final Function function;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      //   color: Colors.red,
      child: Row(
        //  mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Icon(Icons.arrow_back_ios),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(
                fontFamily: 'Montserrat-SemiBold',
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: const Color(0xff000000),
                height: 1.2000000476837158,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
