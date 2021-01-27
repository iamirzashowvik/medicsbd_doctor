import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medicsbd_doctor/Screen/MakeAppointment.dart';
import 'package:medicsbd_doctor/model/color.dart';
import 'package:medicsbd_doctor/model/text.dart';

class CayegoryDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Categories',
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'Assets/Images/127234903_901986727002233_5830790732605941395_n.jpg',
                fit: BoxFit.fill,
                height: 200,
                width: 315,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextBlackB('Dermatology', 14),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text('75 Spacialists',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                      color: kgreen,
                    )),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                // padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                    'simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dumy text ever since the 1500s, when anknown printer took a galley of type and scmbled it to make a type specimen book. It has survived not only five c',
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 14,
                      //    fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                      color: kdblack,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Container(
                  height: 50,
                  //width: 275,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color(0xff4CB848),
                  ),
                  child: Center(
                    child: Text(
                      'Get Appointment',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Montserrat',
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Spacialist Doctors',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                      color: Colors.black,
                    )),
              ),
              SpecialistsDoctorList(),
              SpecialistsDoctorList(),
            ],
          ),
        ),
      ),
    );
  }
}
