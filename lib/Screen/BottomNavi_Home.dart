import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medicsbd_doctor/model/color.dart';

import 'AppoinmentList_20.dart';
import 'Notifications.dart';
import 'PatientProfile_32.dart';
import 'home.dart';

class BottomNavi_Home extends StatefulWidget {
  @override
  _BottomNavi_HomeState createState() => _BottomNavi_HomeState();
}

class _BottomNavi_HomeState extends State<BottomNavi_Home> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: [
          Home(),
          AppoinmentList(),
          Notifications(),
          PatientProfile(),
        ],
        index: _selectedIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: kgreen,
        unselectedItemColor: Color(0xff777777),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.list),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.user),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
