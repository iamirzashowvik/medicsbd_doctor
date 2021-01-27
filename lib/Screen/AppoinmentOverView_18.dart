import 'package:flutter/material.dart';
import 'package:medicsbd_doctor/model/color.dart';

import 'MakeAppointment.dart';
import 'PaymentGAteway_Webview.dart';

class Appoinment_Overview extends StatefulWidget {
  @override
  _Appoinment_OverviewState createState() => _Appoinment_OverviewState();
}

class _Appoinment_OverviewState extends State<Appoinment_Overview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Appoinment',
          style: TextStyle(
            fontFamily: 'Montserrat-SemiBold',
            fontWeight: FontWeight.bold,
            //  fontSize: 24,
            color: const Color(0xff000000),
            height: 1.2000000476837158,
          ),
          textAlign: TextAlign.center,
        ),
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
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Container(
              height: 49,
              width: 315,
              color: kgreen,
              child: Center(
                  child: Text(
                'Appointment Overview',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Montserrat',
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              )),
            ),
            AppointmentData('Appointment ID', '#12456'),
            AppointmentData('Appointment For', 'Booking'),
            AppointmentData('Appointment Date', '#12456'),
            AppointmentData('Appointment Time', '10:30 PM'),
            AppointmentData('Change Amount', '\$700'),
            AppointmentData('Coupon Code', 'N/A'),
            AppointmentData('Payable Amount', '\$700'),
            AppointmentData('Last Transaction ', '#019 ( Online ) '),
            AppointmentData('Problem Summery', 'Cold'),
            SpecialistsDoctorList(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WebViewExample()),
                );
              },
              child: Container(
                height: 49,
                width: 315,
                color: kgreen,
                child: Center(
                    child: Text(
                  'Process tp Pay',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AppointmentData extends StatelessWidget {
  final String title;
  final String data;
  AppointmentData(this.title, this.data);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // color: kgreen,
          height: 49,
          width: 315,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                // color: kgreen,
                width: 180,
                child: Center(
                  child: Text(
                    title,
                    style: TextStyle(
                        color: kdblack,
                        fontFamily: 'Montserrat',
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                width: 10,
                child: Center(
                  child: Text(
                    ':',
                    style: TextStyle(
                        color: kdblack,
                        fontFamily: 'Montserrat',
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                width: 125,
                child: Center(
                  child: Text(
                    data,
                    style: TextStyle(
                        color: kdblack,
                        fontFamily: 'Montserrat',
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(
          height: 2,
        ),
      ],
    );
  }
}
