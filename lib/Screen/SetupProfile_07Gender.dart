import 'package:flutter/material.dart';
import 'package:medicsbd_doctor/Screen/SignIn.dart';
import 'package:medicsbd_doctor/model/TitleWithArrow.dart';
import 'package:medicsbd_doctor/model/clip.dart';
import 'package:medicsbd_doctor/model/color.dart';

class SetupProfile_07Gender extends StatelessWidget {
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
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                      child: DropdownButton<String>(
                        hint: Text('Sex/Gender'),
                        items: <String>['male', 'female'].map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                        onChanged: (_) {},
                      )),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // Container(
                        //   height: 30,
                        //   width: 60,
                        //   decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(25),
                        //     color: Color(0xff4CB848),
                        //   ),
                        //   child: Center(
                        //     child: Text('Skip',
                        //         style: TextStyle(
                        //           fontSize: 17,
                        //           fontWeight: FontWeight.bold,
                        //           fontFamily: 'Montserrat',
                        //           color: Colors.white,
                        //         )),
                        //   ),
                        // ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignIn()),
                            );
                          },
                          child: Container(
                            height: 30,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: kBlue,
                            ),
                            child: Center(
                              child: Text('Next',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat',
                                    color: Colors.white,
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )),
            ),
          ),
          TitleWithArrow('Select Gender'),
        ],
      ),
    );
  }
}
