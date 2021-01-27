import 'package:flutter/material.dart';
import 'package:medicsbd_doctor/model/color.dart';
import 'package:medicsbd_doctor/model/shadow.dart';
import 'package:medicsbd_doctor/model/text.dart';

class MySubMember extends StatefulWidget {
  @override
  _MySubMemberState createState() => _MySubMemberState();
}

class _MySubMemberState extends State<MySubMember> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('MySubMember',
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
        actions: [
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
                                bottom:
                                    MediaQuery.of(context).viewInsets.bottom),
                            child: AddMemberPOPup(),
                          ),
                        )));
              },
              child: Container(
                height: 20,
                width: 95,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: kBlue,
                ),
                child: Center(
                  child: Text('Add New',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                      )),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            MySubMembersssss(),
            MySubMembersssss(),
            MySubMembersssss(),
          ],
        ),
      ),
    );
  }
}

class MySubMembersssss extends StatelessWidget {
  const MySubMembersssss({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // width: 345,
        height: 150,
        decoration: kboxDecoration,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: kBlue,
                      radius: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Kamal Hossain',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                              color: Colors.black,
                            )),
                        Text('child',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                              color: kdblack,
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              child: Container(
                width: 253,
                // color: kgreen,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextBlackB('Gender', 14),
                        TextBlackB('Contact', 14),
                        TextBlackB('Action', 14),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextBlackB('Male', 14),
                        Row(
                          children: [
                            Icon(
                              Icons.phone,
                              color: kgreen,
                            ),
                            Icon(
                              Icons.email,
                              color: kgreen,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.phone,
                              color: kgreen,
                            ),
                            Icon(
                              Icons.email,
                              color: kgreen,
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AddMemberPOPup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 60,
              width: 280,
              color: kgreen,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Add Member',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                        Text(
                          '[you can add upto 10 members]',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'X',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            //     fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 45,
              width: 280,
              // color: kgreen,
              child: Center(
                child: TextField(
                    decoration: InputDecoration(
                  hintText: 'Full Name',
                )),
              ),
            ),
            Container(
              height: 45,
              width: 280,
              // color: kgreen,
              child: DropdownButton(
                items: null,
                onChanged: null,
                hint: Text('Gender'),
              ),
            ),
            Container(
              height: 45,
              width: 280,
              // color: kgreen,
              child: DropdownButton(
                items: null,
                onChanged: null,
                hint: Text('Relationship'),
              ),
            ),
            Container(
              height: 45,
              width: 280,
              // color: kgreen,
              child: Center(
                child: TextField(
                    decoration: InputDecoration(
                  hintText: 'Email',
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
                  hintText: 'Phone',
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: 30,
                  width: 160,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: kgreen,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(5),
                    // color: Color(0xff4CB848),
                  ),
                  child: Center(
                    child: Text(
                      'Choose Profile Photo',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Montserrat',
                          color: kgreen),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 45,
                width: 280,
                color: kBlue,
                child: Center(
                  child: Text(
                    'Add Now',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white),
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
