import 'package:flutter/material.dart';

import 'package:medicsbd_doctor/Screen/SignIn.dart';
import 'package:medicsbd_doctor/model/TitleWithArrow.dart';

import 'package:medicsbd_doctor/model/clip.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Verification extends StatefulWidget {
  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  String currentText;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Canvass(),
          // Container(
          //   height: 200,
          //   //   color: Colors.red,
          //   child: Row(
          //     //  mainAxisAlignment: MainAxisAlignment.center,
          //     // crossAxisAlignment: CrossAxisAlignment.center,
          //     children: [
          //       Padding(
          //         padding: EdgeInsets.all(15.0),
          //         child: Icon(Icons.arrow_back_ios),
          //       ),
          //       Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Text(
          //           'Verify your phone number',
          //           style: TextStyle(
          //             fontFamily: 'Montserrat-SemiBold',
          //             fontWeight: FontWeight.bold,
          //             fontSize: 24,
          //             color: const Color(0xff000000),
          //             height: 1.2000000476837158,
          //           ),
          //           textAlign: TextAlign.center,
          //         ),
          //       ),
          //     ],
          //   ),
          // ),

          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 350),
              child: Column(
                children: [
                  Text(
                    'Enter the OTP sent to your phone',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        color: Colors.black),
                  ),
                  Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                      child: PinCodeTextField(
                        appContext: context,
                        length: 4,
                        obscureText: false,
                        animationType: AnimationType.fade,
                        animationDuration: Duration(milliseconds: 300),
                        //errorAnimationController: errorController, // Pass it here
                        onChanged: (value) {
                          setState(() {
                            currentText = value;
                          });
                        },
                      )),
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
                          color: Color(0xff4CB848),
                        ),
                        child: Center(
                          child: Text(
                            'Verify Identity',
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
                    padding: EdgeInsets.only(top: 150),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t receive OTP code?',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                            //  color: Color(0xff4CB848),
                          ),
                        ),
                        GestureDetector(
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => SignUp()),
                              // );
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Resend OTP',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat',
                                  color: Color(0xff4CB848),
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          TitleWithArrow('Verify your phone number'),
        ],
      ),
    );
  }
}
