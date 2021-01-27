import 'package:flutter/material.dart';

import 'package:medicsbd_doctor/model/clip.dart';

import 'SignIn.dart';
import 'SignUp.dart';

class WelComeScreeen extends StatelessWidget {
  const WelComeScreeen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 50),
              child: Image.asset('Assets/Images/MedicsBD.png'),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 50),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignIn()),
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
                            'Sign In',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Montserrat',
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUp()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: 275,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Color(0xff1A7FC3),
                        ),
                        child: Center(
                          child: Text(
                            'Sign Up',
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
            // Flexible(
            //   child: Image.asset(
            //     'Assets/Images/Doctors.png',
            //     height: 350,
            //     width: 350,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
