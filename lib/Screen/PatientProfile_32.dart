import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medicsbd_doctor/Screen/MySubMember.dart';
import 'package:medicsbd_doctor/Screen/PatientProfile_@2_Doctor.dart';
import 'package:medicsbd_doctor/Screen/PatientWallet.dart';
import 'package:medicsbd_doctor/Screen/Prescriptions.dart';
import 'package:medicsbd_doctor/Screen/SignIn.dart';
import 'package:medicsbd_doctor/model/color.dart';
import 'package:medicsbd_doctor/main.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PatientProfile extends StatefulWidget {
  const PatientProfile({Key key}) : super(key: key);

  @override
  _PatientProfileState createState() => _PatientProfileState();
}

class _PatientProfileState extends State<PatientProfile> {
  void _showDialog() {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: Text("Change Language"),
          //content: new Text("Alert Dialog body"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            FlatButton(
              child: new Text("English"),
              onPressed: () {
                context.read<Counter>().eng();
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: new Text("Bangla"),
              onPressed: () {
                context.read<Counter>().bangla();
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void editAccount() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (_) => PatientProfile_2_Doctor()));
  }

  void _logout() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('islogedin', false);
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (_) => SignIn()));
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
                Text(
                    context.watch<Counter>().count
                        ? 'রোগীর প্রোফাইল'
                        : 'Patient Profile',
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
                        child: Row(
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
                                  Text('Patient',
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
                        )),
                  ),
                  // RowTopic(),
                  // Divider(
                  //   color: kBlue,
                  // ),
                  // RowTopic(),
                  // Divider(
                  //   color: kBlue,
                  // ),
                  // RowTopic(),
                  // Divider(
                  //   color: kBlue,
                  // ),
                  RowTopic(
                      FontAwesomeIcons.users,
                      context.watch<Counter>().count
                          ? 'আমার রেফার সদস্যরা'
                          : 'My Refer Members', () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (_) => MySubMember()));
                  }),
                  Divider(
                    color: kBlue,
                  ),
                  RowTopic(
                      FontAwesomeIcons.prescription,
                      context.watch<Counter>().count
                          ? 'প্রেসক্রিপশন'
                          : 'Prescription', () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (_) => Prescriptions()));
                  }),
                  Divider(
                    color: kBlue,
                  ),
                  RowTopic(
                      FontAwesomeIcons.wallet,
                      context.watch<Counter>().count
                          ? 'অ্যাকাউন্ট সম্পাদনা করুন'
                          : 'My Wallet', () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (_) => PatientWallet()));
                  }),
                  Divider(
                    color: kBlue,
                  ),

                  RowTopic(
                      Icons.language,
                      context.watch<Counter>().count
                          ? 'ভাষা নির্বাচন'
                          : 'Choose Language',
                      _showDialog),
                  Divider(
                    color: kBlue,
                  ),
                  RowTopic(
                      Icons.edit,
                      context.watch<Counter>().count
                          ? 'অ্যাকাউন্ট সম্পাদনা করুন'
                          : 'Edit Account',
                      editAccount),
                  Divider(
                    color: kBlue,
                  ),
                  RowTopic(
                      Icons.logout,
                      context.watch<Counter>().count ? 'লগ আউট' : 'Logout',
                      _logout),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RowTopic extends StatefulWidget {
  final String text;
  final IconData icon;
  final Function function;
  RowTopic(this.icon, this.text, this.function);

  @override
  _RowTopicState createState() => _RowTopicState();
}

class _RowTopicState extends State<RowTopic> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                widget.icon,
                color: kgreen,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(widget.text,
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
          child: FlatButton(
            child: Icon(Icons.arrow_forward_ios),
            onPressed: widget.function,
          ),
        )
      ],
    );
  }
}
