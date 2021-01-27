import 'package:flutter/material.dart';
import 'package:medicsbd_doctor/model/Category.dart';

class AppoinmentList extends StatefulWidget {
  @override
  _AppoinmentListState createState() => _AppoinmentListState();
}

class _AppoinmentListState extends State<AppoinmentList> {
  int _selectedIndex = 3;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Appoinments',
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
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Appoinments(),
            Appoinments(),
            Appoinments(),
            Appoinments(),
            Appoinments(),
            Appoinments(),
            Appoinments()
          ],
        ),
      )),
    );
  }
}
