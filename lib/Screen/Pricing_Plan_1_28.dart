import 'package:flutter/material.dart';
import 'package:medicsbd_doctor/model/color.dart';

class Pricing_Plan_1_28 extends StatefulWidget {
  @override
  _Pricing_Plan_1_28State createState() => _Pricing_Plan_1_28State();
}

class _Pricing_Plan_1_28State extends State<Pricing_Plan_1_28> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Family Packags',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            //  fontSize: 24,
            color: Colors.black,
          ),
        ),
        elevation: 0,
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
      body: Center(
        child: ListView(

            //magnification: 2,
            //itemExtent: 378,
            children: [Packages(), Packages(), Packages()]),
      ),
    );
  }
}

class Packages extends StatelessWidget {
  const Packages({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 280,
          color: kBlue,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Family Packags 1',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(6.0),
                child: Text(
                  'for 2-4 member',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    //fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                height: 45,
                width: 280,
                color: kgreen,
                child: Center(
                  child: Text(
                    'TK. 2200/6 month',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                ),
              ),
              //  Desk Doctor Call = 05
              Container(
                height: 45,
                width: 280,
                // color: kgreen,
                child: Center(
                  child: Text(
                    'Desk Doctor Call = 05',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        //  fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.white),
                  ),
                ),
              ),
              Divider(
                height: 2,
                color: Colors.white,
              ),
              Container(
                height: 45,
                width: 280,
                // color: kgreen,
                child: Center(
                  child: Text(
                    'GP Doctor Call = 02',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        //  fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.white),
                  ),
                ),
              ),
              Divider(
                height: 2,
                color: Colors.white,
              ),
              Container(
                height: 45,
                width: 280,
                // color: kgreen,
                child: Center(
                  child: Text(
                    'Spcialist Doctor Call = 01',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        //  fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.white),
                  ),
                ),
              ),
              Divider(
                height: 2,
                color: Colors.white,
              ),
              Container(
                height: 45,
                width: 280,
                // color: kgreen,
                child: Center(
                  child: Text(
                    'Super Spcialist Doctor Call = 00',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        //  fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.white),
                  ),
                ),
              ),
              // Divider(
              //   height: 2,
              //   color: Colors.white,
              // ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 35,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color(0xff4CB848),
                  ),
                  child: Center(
                    child: Text(
                      'Pick Up',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Montserrat',
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
