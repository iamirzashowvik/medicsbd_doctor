import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medicsbd_doctor/Screen/Appointment_Details_22.dart';
import 'package:medicsbd_doctor/Screen/CayegoryDetails.dart';
import 'package:medicsbd_doctor/Screen/MakeAppointment.dart';
import 'package:medicsbd_doctor/Screen/doctorDetails.dart';

import 'package:provider/provider.dart';
import '../main.dart';
import 'color.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => CayegoryDetails()));
        },
        child: Container(
          height: 100,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Container(
                  height: 30,
                  width: 30,
                  color: kgreen,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text('Dermatology',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                      color: Colors.black,
                    )),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Text('75 Spacialists',
                    style: TextStyle(
                      fontSize: 13,
                      //   fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                      color: Color(0xff777777),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomePageRow extends StatelessWidget {
  final String title;
  final Function func;
  HomePageRow(this.title, this.func);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat',
                color: Colors.black,
              )),
          GestureDetector(
            onTap: func,
            child: Text(
                context.watch<Counter>().count ? 'সবগুলি দেখুন' : 'VIEW ALL',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat',
                  color: kgreen,
                )),
          ),
        ],
      ),
    );
  }
}

class Appoinments extends StatelessWidget {
  const Appoinments({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AppoinmentDetails_22()),
          );
        },
        child: Container(
            height: 80,
            width: 315,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Stack(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: kgreen,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Dr. Kamal Hossain',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat',
                                color: Colors.black,
                              )),
                          Text('Dentist',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat',
                                color: kgreen,
                              )),
                          Text('12 hrs 15 mits left to visit',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat',
                                color: kgreen,
                              )),
                        ],
                      ),
                    )
                  ],
                ),
                Positioned(
                  top: 5,
                  right: 5,
                  child: Text('#ID MQ12545',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                        color: Color(0xff1A7FC3),
                      )),
                ),
              ],
            )),
      ),
    );
  }
}

class SpecialistsDoctorList extends StatelessWidget {
  // SpecialistsDoctorList(BuildContext ctxt, int index);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => DoctorDetails()));
        },
        child: Container(
            height: 80,
            width: 315,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 3,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Stack(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: kgreen,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Dr. Kamal Hossain',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat',
                                color: Colors.black,
                              )),
                          Text('Neorologist',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat',
                                color: kgreen,
                              )),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => MakeAppointment()));
                            },
                            child: Container(
                              height: 22,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xff4CB848),
                              ),
                              child: Center(
                                child: Text(
                                  'Book Now',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'Montserrat',
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(2.50),
                      child: CircleAvatar(
                        radius: 17.5,
                        backgroundColor: kgreen,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(2.50),
                      child: CircleAvatar(
                        radius: 17.5,
                        backgroundColor: kgreen,
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
