import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'BottomNavi_Home.dart';
import 'SetupProfile.dart';
import 'WelComeScreeen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      decideScreen();
    });
  }

  decideScreen() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.getBool('islogedin') == false || pref.getBool('islogedin') == null
        ? Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => WelComeScreeen()))
        : Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => BottomNavi_Home()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('Assets/Images/medicsbd_doctor.png'),
      ),
    );
  }
}
