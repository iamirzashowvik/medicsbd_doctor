import 'package:flutter/material.dart';
import 'package:medicsbd_doctor/Screen/SetupProfile_02.dart';
import 'package:medicsbd_doctor/Screen/SignIn.dart';
import 'package:medicsbd_doctor/Screen/SignUp.dart';
import 'package:medicsbd_doctor/model/TitleWithArrow.dart';
import 'package:medicsbd_doctor/model/clip.dart';

import 'WelComeScreeen.dart';

class SetupProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Canvass(),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 350),
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WelComeScreeen()),
                          );
                        },
                        child: Container(
                          height: 50,
                          width: 275,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color(0xff4CB848),
                          ),
                          child: Center(
                            child: Text(
                              'I\'m a patient',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat',
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignIn()),
                          );
                        },
                        child: Container(
                          height: 50,
                          width: 275,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color(0xff1A7FC3),
                          ),
                          child: Center(
                            child: Text(
                              'I\'m a doctor',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
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
          ),
          TitleWithArrow('Choose User Category'),
        ],
      ),
    );
  }
}
