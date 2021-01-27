import 'package:flutter/material.dart';
import 'package:medicsbd_doctor/model/color.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Notifications',
            style: TextStyle(
              fontSize: 16,
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
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: GestureDetector(
              child: Center(
                child: Text('CLEAR ALL',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                      color: kgreen,
                    )),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Notificationsss(
              'Kamal Hossain is autbh dhgdf shbhs ansj sd sd Kamal Hossain',
              '5 Days Ago'),
          Divider(
            height: 1,
            color: kdblack,
          ),
          Notificationsss(
              'Kamal Hossain is autbh dhgdf shbhs ansj sd sd Kamal Hossain',
              '5 Days Ago'),
          Divider(
            height: 1,
            color: kdblack,
          ),
          Notificationsss(
              'Kamal Hossain is autbh dhgdf shbhs ansj sd sd Kamal Hossain',
              '5 Days Ago'),
          Divider(
            height: 1,
            color: kdblack,
          ),
        ],
      ),
    );
  }
}

class Notificationsss extends StatelessWidget {
  final String time;
  final String noti;
  Notificationsss(this.noti, this.time);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Color(0xffE3EBFD),
              child: Icon(
                Icons.check,
                color: kgreen,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              height: 60,
              width: 280,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(noti,
                        overflow: TextOverflow.clip,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat',
                          color: Colors.black,
                        )),
                  ),
                  Text(time,
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                        color: kdblack,
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
