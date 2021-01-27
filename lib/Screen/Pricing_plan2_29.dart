import 'package:flutter/material.dart';
import 'package:medicsbd_doctor/Screen/BottomNavi_Home.dart';
import 'package:medicsbd_doctor/model/color.dart';

import 'Pricing_Plan_1_28.dart';

class Pricing_Plan_1_29 extends StatefulWidget {
  @override
  _Pricing_Plan_1_29State createState() => _Pricing_Plan_1_29State();
}

class _Pricing_Plan_1_29State extends State<Pricing_Plan_1_29> {
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
        child:
            //ListWheelScrollView
            ListView(
                //  diameterRatio: 10,
                //magnification: 2,
                // itemExtent: 378,
                children: [
              Packages(),
              Packages(),
              Packages(),
              Packages(),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            builder: (context) => SingleChildScrollView(
                                    child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 24, vertical: 10),
                                  child: Container(
                                    padding: EdgeInsets.only(
                                        bottom: MediaQuery.of(context)
                                            .viewInsets
                                            .bottom),
                                    child: MakeCustom(),
                                  ),
                                )));
                      },
                      child: Container(
                        height: 35,
                        width: 280,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Color(0xff4CB848),
                        ),
                        child: Center(
                          child: Text(
                            'MAKE YOUR CUSTOM PRICE',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Montserrat',
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Container(
                      width: 300,
                      child: Row(
                        children: [
                          Text(
                            'Don\'t need any Pricing Plan?',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              //fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: kdblack,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BottomNavi_Home()),
                              );
                            },
                            child: Text(
                              'Back Home',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: kgreen,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}

// class Packages extends StatelessWidget {
//   const Packages({
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       child: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 48, vertical: 10),
//         child: Container(
//           width: 280,
//           color: kBlue,
//           child: Column(
//             children: [
//               Padding(
//                 padding: EdgeInsets.all(10.0),
//                 child: Text(
//                   'Family Packags 1',
//                   style: TextStyle(
//                       fontFamily: 'Montserrat',
//                       fontWeight: FontWeight.bold,
//                       fontSize: 20,
//                       color: Colors.white),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(6.0),
//                 child: Text(
//                   'for 2-4 member',
//                   style: TextStyle(
//                     fontFamily: 'Montserrat',
//                     //fontWeight: FontWeight.bold,
//                     fontSize: 14,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//               Container(
//                 height: 45,
//                 width: 280,
//                 color: kgreen,
//                 child: Center(
//                   child: Text(
//                     'TK. 2200/6 month',
//                     style: TextStyle(
//                         fontFamily: 'Montserrat',
//                         fontWeight: FontWeight.bold,
//                         fontSize: 16,
//                         color: Colors.white),
//                   ),
//                 ),
//               ),
//               //  Desk Doctor Call = 05
//               Container(
//                 height: 45,
//                 width: 280,
//                 // color: kgreen,
//                 child: Center(
//                   child: Text(
//                     'Desk Doctor Call = 05',
//                     style: TextStyle(
//                         fontFamily: 'Montserrat',
//                         //  fontWeight: FontWeight.bold,
//                         fontSize: 14,
//                         color: Colors.white),
//                   ),
//                 ),
//               ),
//               Divider(
//                 height: 2,
//                 color: Colors.white,
//               ),
//               Container(
//                 height: 45,
//                 width: 280,
//                 // color: kgreen,
//                 child: Center(
//                   child: Text(
//                     'GP Doctor Call = 02',
//                     style: TextStyle(
//                         fontFamily: 'Montserrat',
//                         //  fontWeight: FontWeight.bold,
//                         fontSize: 14,
//                         color: Colors.white),
//                   ),
//                 ),
//               ),
//               Divider(
//                 height: 2,
//                 color: Colors.white,
//               ),
//               Container(
//                 height: 45,
//                 width: 280,
//                 // color: kgreen,
//                 child: Center(
//                   child: Text(
//                     'Spcialist Doctor Call = 01',
//                     style: TextStyle(
//                         fontFamily: 'Montserrat',
//                         //  fontWeight: FontWeight.bold,
//                         fontSize: 14,
//                         color: Colors.white),
//                   ),
//                 ),
//               ),
//               Divider(
//                 height: 2,
//                 color: Colors.white,
//               ),
//               Container(
//                 height: 45,
//                 width: 280,
//                 // color: kgreen,
//                 child: Center(
//                   child: Text(
//                     'Super Spcialist Doctor Call = 00',
//                     style: TextStyle(
//                         fontFamily: 'Montserrat',
//                         //  fontWeight: FontWeight.bold,
//                         fontSize: 14,
//                         color: Colors.white),
//                   ),
//                 ),
//               ),
//               // Divider(
//               //   height: 2,
//               //   color: Colors.white,
//               // ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Container(
//                   height: 35,
//                   width: 150,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(25),
//                     color: Color(0xff4CB848),
//                   ),
//                   child: Center(
//                     child: Text(
//                       'Pick Up',
//                       style: TextStyle(
//                           fontSize: 18,
//                           fontFamily: 'Montserrat',
//                           color: Colors.white),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class MakeCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 45,
            width: 280,
            color: kgreen,
            child: Center(
              child: Text(
                'Make Custom Price',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white),
              ),
            ),
          ),
          Container(
            height: 45,
            width: 280,
            // color: kgreen,
            child: Center(
              child: TextField(
                  decoration: InputDecoration(
                hintText: 'Name',
              )),
            ),
          ),
          Container(
            height: 45,
            width: 280,
            // color: kgreen,
            child: Center(
              child: TextField(
                  decoration: InputDecoration(
                hintText: 'E-mail',
              )),
            ),
          ),
          Container(
            height: 45,
            width: 280,
            // color: kgreen,
            child: Center(
              child: TextField(
                  decoration: InputDecoration(
                hintText: 'Desk Doctor Call',
              )),
            ),
          ),
          Container(
            height: 45,
            width: 280,
            // color: kgreen,
            child: Center(
              child: TextField(
                  decoration: InputDecoration(
                hintText: 'GP Doctor Call',
              )),
            ),
          ),
          Container(
            height: 45,
            width: 280,
            // color: kgreen,
            child: Center(
              child: TextField(
                  decoration: InputDecoration(
                hintText: 'Special Doctor Call',
              )),
            ),
          ),
          Container(
            height: 45,
            width: 280,
            // color: kgreen,
            child: Center(
              child: TextField(
                  decoration: InputDecoration(
                hintText: 'Super Special Doctor Call',
              )),
            ),
          ),
          Container(
            height: 45,
            width: 280,
            // color: kgreen,
            child: Center(
              child: TextField(
                  decoration: InputDecoration(
                hintText: '10+1=',
              )),
            ),
          ),
          Container(
            height: 45,
            width: 280,
            color: kgreen,
            child: Center(
              child: Text(
                'Make Your Pricing Plan',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
