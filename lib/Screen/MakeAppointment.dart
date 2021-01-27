import 'package:flutter/material.dart';
import 'package:medicsbd_doctor/model/color.dart';
import 'package:medicsbd_doctor/model/text.dart';

import 'AppoinmentOverView_18.dart';

class MakeAppointment extends StatefulWidget {
  @override
  _MakeAppointmentState createState() => _MakeAppointmentState();
}

class _MakeAppointmentState extends State<MakeAppointment> {
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
        backgroundColor: Colors.white,
        title: Text('Appointment',
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
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            SpecialistsDoctorList(),
            Container(
              height: 200,
              child: DefaultTabController(
                initialIndex: 0,
                length: 7,
                child: Column(
                  children: [
                    TabBar(
                      isScrollable: true,
                      labelColor: Colors.white,
                      indicatorColor: kgreen,
                      unselectedLabelColor: kgreen,
                      indicator: BoxDecoration(
                        color: kgreen,
                      ),
                      tabs: [
                        Tab(text: 'Fri'),
                        Tab(text: 'Sat'),
                        Tab(text: 'Sun'),
                        Tab(text: 'Mon'),
                        Tab(text: 'Tue'),
                        Tab(text: 'Wed'),
                        Tab(text: 'Thu'),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        //  height: 40,
                        width: 315,
                        // color: kgreen,
                        child: TextBlackB('Time Slots', 14),
                      ),
                    ),
                    Container(
                      height: 100,
                      child: TabBarView(
                        children: [
                          //

                          GridView.count(
                            shrinkWrap: false,
                            childAspectRatio: 3,
                            crossAxisCount: 3,
                            children: List.generate(5, (index) {
                              return TImeBOX();
                            }),
                          ),
                          GridView.count(
                            shrinkWrap: false,
                            childAspectRatio: 3,
                            crossAxisCount: 3,
                            children: List.generate(5, (index) {
                              return TImeBOX();
                            }),
                          ),
                          GridView.count(
                            shrinkWrap: false,
                            childAspectRatio: 3,
                            crossAxisCount: 3,
                            children: List.generate(5, (index) {
                              return TImeBOX();
                            }),
                          ),
                          GridView.count(
                            shrinkWrap: false,
                            childAspectRatio: 3,
                            crossAxisCount: 3,
                            children: List.generate(5, (index) {
                              return TImeBOX();
                            }),
                          ),
                          GridView.count(
                            shrinkWrap: false,
                            childAspectRatio: 3,
                            crossAxisCount: 3,
                            children: List.generate(5, (index) {
                              return TImeBOX();
                            }),
                          ),
                          GridView.count(
                            shrinkWrap: false,
                            childAspectRatio: 3,
                            crossAxisCount: 3,
                            children: List.generate(5, (index) {
                              return TImeBOX();
                            }),
                          ),
                          GridView.count(
                            shrinkWrap: false,
                            childAspectRatio: 3,
                            crossAxisCount: 3,
                            children: List.generate(5, (index) {
                              return TImeBOX();
                            }),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 45,
              width: 315,
              // color: kgreen,
              child: DropdownButton(
                items: null,
                onChanged: null,
                hint: Text(
                  'Appointment For',
                  style: TextStyle(fontSize: 14, color: kdblack),
                ),
              ),
            ),
            Container(
              height: 45,
              width: 315,
              // color: kgreen,
              child: DropdownButton(
                items: null,
                onChanged: null,
                hint: Text(
                  'Charge',
                  style: TextStyle(fontSize: 14, color: kdblack),
                ),
              ),
            ),
            Container(
              height: 45,
              width: 315,
              // color: kgreen,
              child: Center(
                child: TextField(
                    decoration: InputDecoration(
                  hintText: 'Problem Details',
                )),
              ),
            ),
            Container(
              height: 45,
              width: 315,
              // color: kgreen,
              child: DropdownButton(
                items: null,
                onChanged: null,
                hint: Text(
                  'Coupon Code',
                  style: TextStyle(fontSize: 14, color: kdblack),
                ),
              ),
            ),
            Container(
              height: 45,
              width: 315,
              // color: kgreen,
              child: DropdownButton(
                items: null,
                onChanged: null,
                hint: Text(
                  'Payment Method',
                  style: TextStyle(fontSize: 14, color: kdblack),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 30,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xff4CB848),
                    ),
                    child: Center(
                      child: Text('Skip',
                          style: TextStyle(
                            fontSize: 17,
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
                            builder: (context) => Appoinment_Overview()),
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
            ),
          ],
        ),
      ),
    );
  }
}

class TImeBOX extends StatelessWidget {
  const TImeBOX({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 80,
      decoration: BoxDecoration(
        border: Border.all(
          color: kgreen,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(5),
        // color: Color(0xff4CB848),
      ),
      child: Center(
        child: Text(
          '8 AM',
          style: TextStyle(
              fontSize: 14, fontFamily: 'Montserrat', color: Colors.black),
        ),
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
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                              color: kgreen,
                            )),
                        Text(
                          'Assists',
                          style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'Montserrat',
                              color: kgreen),
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
    );
  }
}
