import 'package:flutter/material.dart';
import 'package:medicsbd_doctor/Screen/SetupProfile_02.dart';
import 'package:medicsbd_doctor/model/color.dart';

class PatientProfile_2_Doctor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff4CB848),
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.white),
        title: Text('Patient Profile',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'Montserrat',
              color: Colors.white,
            )),
      ),
      body: Stack(
        children: [
          Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25)),
              color: Color(0xff4CB848),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                                      radius: 30, backgroundColor: kgreen),
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
                                      Text('Patient 123',
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Montserrat',
                                            color: kgreen,
                                          )),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SetupProfile_02()),
                                      );
                                    },
                                    child: Container(
                                      height: 25,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: kBlue,
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Edit',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontFamily: 'Montserrat',
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )),
                  ),
                  Text_ofC('Age'),
                  Text_ofC('24'),
                  Divider(
                    height: 1,
                    color: kdblack,
                  ),
                  Text_ofC('Gender'),
                  Text_ofC('Male'),
                  Divider(
                    height: 1,
                    color: kdblack,
                  ),
                  Text_ofC('Blood'),
                  Text_ofC('A+'),
                  Divider(
                    height: 1,
                    color: kdblack,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  BoxText(Icons.phone, 'Mobile', '+8801710427095'),
                  BoxText(Icons.email, 'Email', 'abcks@gmail.com'),
                  BoxText(Icons.location_on, 'Current Address', 'Dhaka'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BoxText extends StatelessWidget {
  final String title;
  final String data;
  final IconData _iconData;
  BoxText(this._iconData, this.title, this.data);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Container(
        height: 72,
        // width: 315,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  _iconData,
                  color: kgreen,
                  size: 21,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text_ofC(title),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        data,
                        style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Montserrat',
                            color: kdblack),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Text_ofC extends StatelessWidget {
  final String cc;

  Text_ofC(this.cc);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        cc,
        style: TextStyle(
            fontSize: 14, fontFamily: 'Montserrat', color: Colors.black),
      ),
    );
  }
}
