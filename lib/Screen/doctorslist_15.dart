import 'package:flutter/material.dart';
import 'package:medicsbd_doctor/Screen/MakeAppointment.dart';

class DoctorsList extends StatefulWidget {
  @override
  _DoctorsListState createState() => _DoctorsListState();
}

class _DoctorsListState extends State<DoctorsList> {
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
        title: Text('Doctors',
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
      // backgroundColor: kBlue,
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SpecialistsDoctorList(),
              SpecialistsDoctorList(),
              SpecialistsDoctorList(),
              SpecialistsDoctorList(),
              SpecialistsDoctorList(),
              SpecialistsDoctorList(),
              SpecialistsDoctorList(),
              SpecialistsDoctorList(),
            ],
          ),
        ),
      ),
    );
  }
}
