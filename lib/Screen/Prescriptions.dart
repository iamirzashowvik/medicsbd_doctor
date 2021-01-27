import 'package:flutter/material.dart';
import 'package:medicsbd_doctor/model/color.dart';
import 'package:medicsbd_doctor/model/shadow.dart';
import 'package:medicsbd_doctor/model/text.dart';

class Prescriptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Prescriptions',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'Montserrat',
              color: Colors.black,
            )),
        //centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            MySubMemberssss(),
            MySubMemberssss(),
          ],
        ),
      ),
    );
  }
}

class MySubMemberssss extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // width: 345,
        height: 150,
        decoration: kboxDecoration,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor: kBlue,
                          radius: 30,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Kamal Hossain',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat',
                                  color: Colors.black,
                                )),
                            Text('Appointment ID 845755',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat',
                                  color: kdblack,
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                  child: Container(
                    width: 253,
                    // color: kgreen,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextBlackB('Major Concern', 14),
                            TextBlackB('Status', 14),
                            TextBlackB('Action', 14),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextBlackB('Test Problem', 14),
                            Container(
                              height: 20,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: kBlue,
                              ),
                              child: Center(
                                child: Text(
                                  'Active',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'Montserrat',
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            Icon(
                              Icons.phone,
                              color: kgreen,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Positioned(
                right: 10,
                top: 10,
                child: Container(
                  height: 20,
                  width: 85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xff4CB848),
                  ),
                  child: Center(
                    child: Text(
                      'Download',
                      style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Montserrat',
                          color: Colors.white),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
