import 'package:flutter/material.dart';
import 'package:medicsbd_doctor/model/TopCurveContainerText.dart';
import 'package:medicsbd_doctor/model/clip.dart';

import 'package:provider/provider.dart';

import '../main.dart';
import 'SetupProfile_02.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Canvass(),
          TopCurveContainerText(
              context.watch<Counter>().count ? 'সাইন আপ' : 'Sign Up',
              context.watch<Counter>().count
                  ? 'আকাইন্ট খোলার জন্যে সাইন আপ করুন'
                  : 'Sign up to create your Account'),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 250),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                    child: TextField(
                        decoration: InputDecoration(
                      hintText: context.watch<Counter>().count ? 'নাম' : 'Name',
                    )),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                    child: TextField(
                        decoration: InputDecoration(
                      hintText:
                          context.watch<Counter>().count ? 'ইমেইল' : 'Email',
                    )),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                    child: TextField(
                        decoration: InputDecoration(
                      hintText: context.watch<Counter>().count
                          ? 'ফোন নম্বর'
                          : 'Phone Number',
                    )),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                    child: TextField(
                        decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                        child: Icon(Icons.remove_red_eye),
                      ),
                      hintText: context.watch<Counter>().count
                          ? 'পাসওয়াড'
                          : 'Password',
                    )),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                    child: TextField(
                        decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                        child: Icon(Icons.remove_red_eye),
                      ),
                      hintText: context.watch<Counter>().count
                          ? 'নিশ্চিত পাসওয়াড'
                          : 'Confirm Password',
                    )),
                  ),
                  Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(value: false, onChanged: null),
                          Text(
                              context.watch<Counter>().count
                                  ? 'আমি শর্ত ও গোপনীয়তা মেনে নিচ্ছি'
                                  : 'I accept with terms & privacy policy',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat',
                                color: Colors.black,
                              ))
                        ],
                      )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SetupProfile_02()),
                        );
                      },
                      child: Container(
                        height: 50,
                        width: 275,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Color(0xff4CB848),
                        ),
                        child: Center(
                          child: Text(
                              context.watch<Counter>().count
                                  ? 'সাইন আপ'
                                  : 'Sign Up',
                              style: TextStyle(
                                fontSize: 18,
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
            ),
          ),
        ],
      ),
    );
  }
}
