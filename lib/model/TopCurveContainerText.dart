import 'package:flutter/material.dart';

class TopCurveContainerText extends StatelessWidget {
  final String title;
  final String message;
  TopCurveContainerText(this.title, this.message);
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      // color: Colors.red,
      child: Center(
        child: Column(
          //  mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60),
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                message,
                style: TextStyle(
                  fontFamily: 'Montserrat-Regular',
                  fontSize: 16,
                  color: const Color(0xff777777),
                  height: 1.2000000476837158,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
