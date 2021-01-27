import 'package:flutter/material.dart';
import 'package:medicsbd_doctor/model/color.dart';
import 'package:medicsbd_doctor/model/text.dart';

class ChatRoom extends StatefulWidget {
  @override
  _ChatRoomState createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Container(
              height: 80,
              // width: 345,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back_ios)),
                      CircleAvatar(
                        backgroundColor: kgreen,
                        radius: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextBlackB('Doctor NAme', 16),
                            Text('Last Active 10:35',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat',
                                  color: kdblack,
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                  Icon(Icons.menu),
                ],
              ),
            ),
          ),
          Container(
            height: 500,
            width: 200,
            color: Colors.white10,
          ),
        ],
      ),
      bottomSheet: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                // borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: kgreen,
                    spreadRadius: 2,
                    blurRadius: 3,
                    // offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              child: Icon(
                Icons.file_present,
                color: kgreen,
                size: 25,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                // borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: kgreen,
                    spreadRadius: 2,
                    blurRadius: 3,
                    // offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              child: Icon(
                Icons.mic,
                color: kgreen,
                size: 25,
              ),
            ),
          ),
          Container(
            width: 225,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(hintText: 'Type message...'),
              ),
            ),
          ),
          Container(
            width: 35,
            height: 40,
            color: kgreen,
            child: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
