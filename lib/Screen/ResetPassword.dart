import 'package:flutter/material.dart';
import 'package:medicsbd_doctor/Screen/Verification.dart';
import 'package:medicsbd_doctor/model/TopCurveContainerText.dart';

import 'package:medicsbd_doctor/model/clip.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Canvass(),
          TopCurveContainerText('Reset Password', 'Reset your password again'),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 350),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                    child: TextField(
                        decoration: InputDecoration(
                      hintText: 'Email Address',
                    )),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Verification()),
                      );
                    },
                    child: Padding(
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
