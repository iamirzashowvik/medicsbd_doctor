import 'package:flutter/material.dart';
import 'package:medicsbd_doctor/model/color.dart';

import 'AudioCall.dart';
import 'ChatRoom.dart';
import 'MakeAppointment.dart';
import 'VideoCall.dart';

// ignore: camel_case_types
class AppoinmentDetails_22 extends StatefulWidget {
  @override
  _AppoinmentDetails_22State createState() => _AppoinmentDetails_22State();
}

// ignore: camel_case_types
class _AppoinmentDetails_22State extends State<AppoinmentDetails_22> {
  int _selectedIndex = 1;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff4CB848),
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.white),
        title: Text('Appoinment details',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'Montserrat',
              color: Colors.white,
            )),
      ),
      body: Stack(
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
              color: Color(0xff4CB848),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 40, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 420,
                    width: 315,
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(3),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundColor: kgreen,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Doctor Name',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat',
                                    color: Colors.black,
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text('MBBS(SoMC),B€cs(Health)',
                                  style: TextStyle(
                                    fontSize: 13,
                                    //     fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat',
                                    color: Color(0xff777777),
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text('FCPS (Medicine)',
                                  style: TextStyle(
                                    fontSize: 13,
                                    //       fontWeight: FontWeight.,
                                    fontFamily: 'Montserrat',
                                    color: Color(0xff777777),
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Medicine Consultant',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat',
                                    color: kgreen,
                                  )),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      // ChatRoom
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => ChatRoom()),
                                      );
                                    },
                                    child: CircleAvatar(
                                      radius: 17.5,
                                      backgroundColor: kgreen,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Audiocall()),
                                      );
                                    },
                                    child: CircleAvatar(
                                      radius: 17.5,
                                      backgroundColor: kgreen,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => VideoCall()),
                                      );
                                    },
                                    child: CircleAvatar(
                                      radius: 17.5,
                                      backgroundColor: kgreen,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Divider(
                              height: 2,
                              color: kdblack,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.ac_unit,
                                        color: kgreen,
                                      ),
                                      Text('Online'),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.ac_unit, color: kgreen),
                                      Text('Online'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.ac_unit,
                                        color: kgreen,
                                      ),
                                      Text('Online'),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.ac_unit, color: kgreen),
                                      Text('Online'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              height: 2,
                              color: kdblack,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  MakeAppointment()),
                                        );
                                      },
                                      child: Container(
                                        height: 25,
                                        width: 120,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          color: Color(0xff4CB848),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'ReSchedule',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontFamily: 'Montserrat',
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 25,
                                      width: 120,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: kBlue,
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Cancel',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'Montserrat',
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Positioned(
                          left: 10,
                          top: 10,
                          child: Container(
                            height: 25,
                            width: 100,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: kgreen,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(25),
                              // color: Color(0xff4CB848),
                            ),
                            child: Center(
                              child: Text(
                                'Approved',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Montserrat',
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
