import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:medicsbd_doctor/Screen/MakeAppointment.dart';
import 'package:medicsbd_doctor/model/color.dart';

class DoctorDetails extends StatefulWidget {
  const DoctorDetails({Key key}) : super(key: key);

  @override
  _DoctorDetailsState createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails> {
  int _selectedIndex = 1;
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
            height: 250,
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
                Text('Doctor details',
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
              padding: EdgeInsets.only(left: 40, top: 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 250,
                    width: 315,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundColor: kgreen,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Doctor Name',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat',
                                color: Colors.black,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text('MBBS(SoMC),B€cs(Health)',
                              style: TextStyle(
                                fontSize: 13,
                                //     fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat',
                                color: Color(0xff777777),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text('FCPS (Medicine)',
                              style: TextStyle(
                                fontSize: 13,
                                //       fontWeight: FontWeight.,
                                fontFamily: 'Montserrat',
                                color: Color(0xff777777),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Medicine Consultant',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat',
                                color: kgreen,
                              )),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                radius: 17.5,
                                backgroundColor: kgreen,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                radius: 17.5,
                                backgroundColor: kgreen,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                radius: 17.5,
                                backgroundColor: kgreen,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 230,
                    width: 315,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 15),
                          child: Text('Details Information',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat',
                                color: Colors.black,
                              )),
                        ),
                        RowInform(Icons.email, 'email@gmail.com'),
                        RowInform(Icons.baby_changing_station, '00'),
                        RowInform(Icons.location_on_outlined,
                            'Medicsbd Online Consultation  Service Cumilla-3500,  Bangladesh.'),
                        RowInform(Icons.money_outlined, '\$10-\$500'),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => MakeAppointment()));
                            },
                            child: Container(
                              height: 22,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Color(0xff4CB848),
                              ),
                              child: Center(
                                child: Text(
                                  'Book Now',
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
                  ),
                  Container(
                    height: 400,
                    width: 315,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: DefaultTabController(
                      initialIndex: 0,
                      length: 2,
                      child: Column(
                        children: [
                          TabBar(
                            labelColor: Colors.white,
                            indicatorColor: kgreen,
                            unselectedLabelColor: kgreen,
                            indicator: BoxDecoration(
                              color: kgreen,
                            ),
                            tabs: [
                              Tab(text: 'OverView'),
                              Tab(text: 'Review'),
                            ],
                          ),
                          Expanded(
                            child: TabBarView(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('About',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Montserrat',
                                            color: Colors.black,
                                          )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('MBBS(SoMC),B€cs(Health)',
                                          style: TextStyle(
                                            fontSize: 13,
                                            //     fontWeight: FontWeight.bold,
                                            fontFamily: 'Montserrat',
                                            color: Color(0xff777777),
                                          )),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('Top 10 Reviews',
                                          style: TextStyle(
                                            fontSize: 14,
                                            //     fontWeight: FontWeight.bold,
                                            fontFamily: 'Montserrat',
                                            color: Colors.black,
                                          )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('No Reviews Yet!',
                                          style: TextStyle(
                                            fontSize: 13,
                                            //     fontWeight: FontWeight.bold,
                                            fontFamily: 'Montserrat',
                                            color: Color(0xff777777),
                                          )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('Write a review for Dr. X',
                                          style: TextStyle(
                                            fontSize: 14,
                                            //     fontWeight: FontWeight.bold,
                                            fontFamily: 'Montserrat',
                                            color: Colors.black,
                                          )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('Review',
                                          style: TextStyle(
                                            fontSize: 13,
                                            //     fontWeight: FontWeight.bold,
                                            fontFamily: 'Montserrat',
                                            color: Color(0xff777777),
                                          )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: RatingBar.builder(
                                        initialRating: 3,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: false,
                                        itemCount: 5,
                                        itemPadding: EdgeInsets.symmetric(
                                            horizontal: 4.0),
                                        itemBuilder: (context, _) => Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        onRatingUpdate: (rating) {
                                          print(rating);
                                        },
                                      ),
                                    ),
                                    // Padding(
                                    //   padding: const EdgeInsets.all(8.0),
                                    //   child: Text('Your Review',
                                    //       style: TextStyle(
                                    //         fontSize: 13,
                                    //         //     fontWeight: FontWeight.bold,
                                    //         fontFamily: 'Montserrat',
                                    //         color: Color(0xff777777),
                                    //       )),
                                    // ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextField(
                                          decoration: InputDecoration(
                                        hintText: 'Write something...',
                                      )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 22,
                                        width: 100,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Color(0xff4CB848),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Add Review',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontFamily: 'Montserrat',
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class RowInform extends StatelessWidget {
  final IconData icon;
  final String string;
  RowInform(this.icon, this.string);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Icon(
            icon,
            color: kgreen,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(string,
                overflow: TextOverflow.clip,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat',
                  color: Color(0xff777777),
                )),
          ),
        ),
      ],
    );
  }
}
