import 'package:flutter/material.dart';
import 'package:medicsbd_doctor/model/color.dart';
import 'package:medicsbd_doctor/model/text.dart';

import 'Appointment_Details_22.dart';

// ignore: camel_case_types
class Verify_payment extends StatefulWidget {
  @override
  _Verify_paymentState createState() => _Verify_paymentState();
}

// ignore: camel_case_types
class _Verify_paymentState extends State<Verify_payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Verify Your Payment',
            style: TextStyle(
              fontSize: 16,
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
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 45,
              width: 315,
              //color: kgreen,
              child: DropdownButton(
                items: null,
                onChanged: null,
                hint: Text('Select Payment Method'),
              ),
            ),
            Container(
              height: 45,
              //width: 315,
              // color: kgreen,
              child: Center(
                child: TextField(
                    decoration: InputDecoration(
                  hintText: 'Enter Account Number',
                )),
              ),
            ),
            Container(
              height: 45,
              //width: 315,
              // color: kgreen,
              child: Center(
                child: TextField(
                    decoration: InputDecoration(
                  hintText: 'Enter Transaction ID',
                )),
              ),
            ),
            Container(
              height: 45,
              //width: 315,
              // color: kgreen,
              child: Center(
                child: TextField(
                    decoration: InputDecoration(
                  hintText: 'Paid Amount',
                )),
              ),
            ),
            Container(
              height: 45,
              //width: 315,
              // color: kgreen,
              child: Center(
                child: TextField(
                    decoration: InputDecoration(
                  hintText: 'Write Comment',
                )),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: kBlue,
                    ),
                    child: Center(
                      child: Text('Back',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                            color: Colors.white,
                          )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AppoinmentDetails_22()),
                      );
                    },
                    child: Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: kgreen,
                      ),
                      child: Center(
                        child: Text('Submit',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                              color: Colors.white,
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: TextBlackB('Payment Process for Bkash', 16),
            ),
            Image.asset(
              'Assets/Images/gg.png',
              height: 154,
              width: 334,
            )
          ],
        ),
      ),
    );
  }
}
