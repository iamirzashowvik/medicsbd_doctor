import 'package:flutter/material.dart';

import 'package:medicsbd_doctor/model/TopCurveContainerText.dart';
import 'package:medicsbd_doctor/model/clip.dart';

class UpdateNewPasword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Canvass(),
          TopCurveContainerText(
              'Reset New Password', 'Sign in to access your Account'),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 450),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                    child: TextField(
                        decoration: InputDecoration(
                      // suffixIcon: GestureDetector(
                      //   child: Icon(Icons.remove_red_eye),
                      // ),
                      hintText: 'New Password',
                    )),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                    child: TextField(
                        decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                        child: Icon(Icons.remove_red_eye),
                      ),
                      hintText: 'Confirm New Password',
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 275,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color(0xff4CB848),
                      ),
                      child: Center(
                        child: Text(
                          'Reset Password',
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Montserrat',
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
