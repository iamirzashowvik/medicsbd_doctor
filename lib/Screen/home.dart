import 'package:flutter/material.dart';
import 'package:medicsbd_doctor/model/Category.dart';
import 'package:medicsbd_doctor/model/color.dart';

import 'package:provider/provider.dart';
import '../main.dart';
import 'AppoinmentList_20.dart';
import 'Categories_All.dart';
import 'doctorslist_15.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void catView() {
    Navigator.push(context, MaterialPageRoute(builder: (_) => AllCategories()));
  }

  void appointmentView() {
    Navigator.push(
        context, MaterialPageRoute(builder: (_) => AppoinmentList()));
  }

  // ignore: non_constant_identifier_names
  void specialDoctor_View() {
    Navigator.push(context, MaterialPageRoute(builder: (_) => DoctorsList()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFCFEFF),
      appBar: AppBar(
        actions: [
          Icon(Icons.location_on),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: Text('Dhaka , Mymemsingh',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                      // color: Colors.black,
                    ))),
          )
        ],
        elevation: 0,
        backgroundColor: kgreen,
      ),
      drawer: Drawer(),
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 100,
              color: kgreen,
            ),
            Container(
              //  color: Colors.red,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                        context.watch<Counter>().count
                            ? 'আসসালামু আলাইকুম'
                            : 'Assalamu Alikum,',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                        context.watch<Counter>().count
                            ? 'কেমন আছেন, Mirza ?'
                            : 'How are you feeling, Mirza ?',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Container(
                      width: 345,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 3,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: context.watch<Counter>().count
                                  ? 'ডাক্তার খুঁজুন'
                                  : 'Search for a doctors',
                              suffixIcon: Icon(Icons.search)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 35, right: 35, top: 150),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  child: Column(
                    children: [
                      HomePageRow('Categories', catView),
                      Row(
                        children: [Categories(), Categories()],
                      ),
                      Row(
                        children: [Categories(), Categories()],
                      ),
                      HomePageRow('Appoinments', appointmentView),
                      Appoinments(),
                      Appoinments(),
                      HomePageRow('Spacialist Doctors', specialDoctor_View),
                      SpecialistsDoctorList(),
                      SpecialistsDoctorList(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
