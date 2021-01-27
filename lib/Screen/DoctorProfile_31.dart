import 'package:flutter/material.dart';
import 'package:medicsbd_doctor/model/color.dart';

class DoctorProfile extends StatefulWidget {
  const DoctorProfile({Key key}) : super(key: key);

  @override
  _DoctorProfileState createState() => _DoctorProfileState();
}

class _DoctorProfileState extends State<DoctorProfile> {
  int _selectedIndex = 4;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Color(0xff4CB848),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30, left: 10),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Icon(Icons.arrow_back_ios, color: Colors.white),
                  ),
                ),
                Text('Doctor Profile',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                    )),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 80,
                        // width: 315,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 3,
                              offset:
                                  Offset(0, 3), // changes position of shadow
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text('Kamal Hossain',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Montserrat',
                                            color: Colors.black,
                                          )),
                                      Text('Doctor',
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Montserrat',
                                            color: kgreen,
                                          )),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )),
                  ),
                  RowTopic(),
                  Divider(
                    color: kBlue,
                  ),
                  RowTopic(),
                  Divider(
                    color: kBlue,
                  ),
                  RowTopic(),
                  Divider(
                    color: kBlue,
                  ),
                  RowTopic(),
                  Divider(
                    color: kBlue,
                  ),
                  RowTopic(),
                  Divider(
                    color: kBlue,
                  ),
                  RowTopic(),
                  Divider(
                    color: kBlue,
                  ),
                  RowTopic(),
                  Divider(
                    color: kBlue,
                  ),
                  RowTopic(),
                  Divider(
                    color: kBlue,
                  ),
                  RowTopic(),
                ],
              ),
            ),
          ),
        ],
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
            icon: Icon(Icons.check),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.text_fields),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_outline),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class RowTopic extends StatelessWidget {
  // final String text;
  // final IconData icon;
  // final String function;
  // RowTopic(this.icon, this.text, this.function);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.ac_unit,
                  color: kgreen,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('abcd',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                      color: Colors.black,
                    )),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.arrow_forward_ios),
          )
        ],
      ),
    );
  }
}
