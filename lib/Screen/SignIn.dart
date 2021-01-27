import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:medicsbd_doctor/NETwork/Auth/Login_API.dart';
import 'package:medicsbd_doctor/Screen/BottomNavi_Home.dart';
import 'package:medicsbd_doctor/Screen/ResetPassword.dart';
import 'package:medicsbd_doctor/Screen/SignUp.dart';
import 'package:medicsbd_doctor/main.dart';
import 'package:medicsbd_doctor/model/AppAlertDialog.dart';
import 'package:medicsbd_doctor/model/TopCurveContainerText.dart';
import 'package:medicsbd_doctor/model/clip.dart';
import 'package:medicsbd_doctor/model/color.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  String phone;
  bool obs = true;
  String pass;
  // void _showDialog() {
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       // return object of type Dialog
  //       return AlertDialog(
  //         title: Text("Something wrong with your Email or Password"),
  //         //content: new Text("Alert Dialog body"),
  //         actions: <Widget>[
  //           // usually buttons at the bottom of the dialog

  //           FlatButton(
  //             child: new Text("OK"),
  //             onPressed: () {
  //               Navigator.of(context).pop();
  //             },
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }

  final _loginForm = GlobalKey<FormState>();
  bool userPasswordVisible = false;

  TextEditingController _userName = TextEditingController();
  TextEditingController _userPassword = TextEditingController();
  Pattern emailPattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  Map<String, dynamic> loginData = Map<String, dynamic>();
  Map<String, dynamic> currentData = Map<String, dynamic>();

  //SharedPreferenceApp shPrefApp = SharedPreferenceApp();

//  void _toggle() {
//    setState(() {
//      _obscureText = !_obscureText;
//    });
//  }
  bool _obscureText = true;
  String userToken;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Canvass(),
          TopCurveContainerText(
              context.watch<Counter>().count ? 'সাইন ইন' : 'Sign In',
              context.watch<Counter>().count
                  ? 'অ্যাকাইন্টে ঢুকার জন্য সাইন ইন করুন'
                  : 'Sign in to access your Account'),
          Padding(
              padding: EdgeInsets.only(top: 350),
              child:
                  //  SingleChildScrollView(
                  //   child: Column(
                  //     children: [
                  //       // Padding(
                  //       //   padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  //       //   child: TextField(
                  //       //       onChanged: (value) {
                  //       //         phone = value;
                  //       //       },
                  //       //       decoration: InputDecoration(
                  //       //         hintText: context.watch<Counter>().count
                  //       //             ? 'ইমেইল অথবা ফোন'
                  //       //             : 'Email or Phone',
                  //       //       )),
                  //       // ),
                  //       // Padding(
                  //       //   padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  //       //   child: TextField(
                  //       //       obscureText: obs,
                  //       //       onChanged: (value) {
                  //       //         pass = value;
                  //       //       },
                  //       //       decoration: InputDecoration(
                  //       //         suffixIcon: GestureDetector(
                  //       //           onTap: () {
                  //       //             setState(() {
                  //       //               if (obs == true) {
                  //       //                 obs = false;
                  //       //               } else {
                  //       //                 obs = true;
                  //       //               }
                  //       //             });
                  //       //           },
                  //       //           child: Icon(Icons.remove_red_eye),
                  //       //         ),
                  //       //         hintText: context.watch<Counter>().count
                  //       //             ? 'পাসওয়াড'
                  //       //             : 'Password',
                  //       //       )),
                  //       // ),
                  //       Padding(
                  //         padding: const EdgeInsets.symmetric(horizontal: 20),
                  //         child: TextFormField(
                  //           controller: _userName,
                  //           validator: (value) {
                  //             RegExp regex = new RegExp(emailPattern);
                  //             if (value.isEmpty) {
                  //               return 'Email can not be empty';
                  //             } else if (!regex.hasMatch(value)) {
                  //               return 'Enter Valid Email Format';
                  //             }

                  //             return null;
                  //           },
                  //           decoration: new InputDecoration(
                  //             focusedBorder: OutlineInputBorder(
                  //                 borderSide:
                  //                     BorderSide(color: Colors.grey[200], width: 0.0),
                  //                 borderRadius: BorderRadius.circular(10)),
                  //             enabledBorder: OutlineInputBorder(
                  //                 borderSide:
                  //                     BorderSide(color: Colors.grey[200], width: 0.0),
                  //                 borderRadius: BorderRadius.circular(10)),
                  //             errorBorder: OutlineInputBorder(
                  //                 borderSide:
                  //                     BorderSide(color: Colors.red[300], width: 0.0),
                  //                 borderRadius: BorderRadius.circular(10)),
                  //             focusedErrorBorder: OutlineInputBorder(
                  //                 borderSide:
                  //                     BorderSide(color: Colors.red[300], width: 0.0),
                  //                 borderRadius: BorderRadius.circular(10)),
                  //             fillColor: Colors.grey[200],
                  //             filled: true,
                  //             border: InputBorder.none,
                  //             prefixIcon: Icon(
                  //               Icons.email,
                  //               color: Color(0xff00587A),
                  //             ),
                  //             hintText: 'Email',
                  //           ),
                  //         ),
                  //       ),
                  //       Padding(
                  //         padding: const EdgeInsets.symmetric(
                  //             horizontal: 20, vertical: 15),
                  //         child: TextFormField(
                  //           controller: _userPassword,
                  //           validator: (value) {
                  //             if (value.isEmpty) {
                  //               return 'Password can not be empty';
                  //             }
                  //             return null;
                  //           },
                  //           decoration: InputDecoration(
                  //             focusedBorder: OutlineInputBorder(
                  //                 borderSide:
                  //                     BorderSide(color: Colors.grey[200], width: 0.0),
                  //                 borderRadius: BorderRadius.circular(10)),
                  //             enabledBorder: OutlineInputBorder(
                  //                 borderSide:
                  //                     BorderSide(color: Colors.grey[200], width: 0.0),
                  //                 borderRadius: BorderRadius.circular(10)),
                  //             errorBorder: OutlineInputBorder(
                  //                 borderSide:
                  //                     BorderSide(color: Colors.red[300], width: 0.0),
                  //                 borderRadius: BorderRadius.circular(10)),
                  //             focusedErrorBorder: OutlineInputBorder(
                  //                 borderSide:
                  //                     BorderSide(color: Colors.red[300], width: 0.0),
                  //                 borderRadius: BorderRadius.circular(10)),

                  //             hintText: 'Password',
                  //             fillColor: Colors.grey[200],
                  //             filled: true,
                  //             //          hintStyle: TextStyle(fontSize: 12.0),
                  //             border: InputBorder.none,
                  //             prefixIcon: Icon(
                  //               Icons.lock_open,
                  //               color: Color(0xff00587A),
                  //             ),
                  //             suffixIcon: IconButton(
                  //               icon: userPasswordVisible
                  //                   ? Icon(Icons.visibility, color: Color(0xff00587A))
                  //                   : Icon(Icons.visibility_off,
                  //                       color: Color(0xff00587A)),
                  //               onPressed: UserPasswordToggle,
                  //             ),
                  //           ),
                  //           obscureText: userPasswordVisible ? false : true,
                  //         ),
                  //       ),

                  //       Padding(
                  //           padding:
                  //               EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  //           child: Row(
                  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //             children: [
                  //               // Row(
                  //               //   children: [
                  //               //     Switch(
                  //               //       value: false,
                  //               //       onChanged: null,
                  //               //       activeColor: Color(0xff4CB848),
                  //               //       inactiveThumbColor: Color(0xff4CB848),
                  //               //     ),
                  //               //     Text(context.watch<Counter>().count
                  //               //         ? 'স্মরণ রাখুন'
                  //               //         : 'Remember me'),
                  //               //   ],
                  //               // ),
                  //               // GestureDetector(
                  //               //     onTap: () {
                  //               //       Navigator.push(
                  //               //         context,
                  //               //         MaterialPageRoute(
                  //               //             builder: (context) => ResetPassword()),
                  //               //       );
                  //               //     },
                  //               //     child: Text(context.watch<Counter>().count
                  //               //         ? 'পাসওয়াড ভুলেছেন?'
                  //               //         : 'Forgot Password?')),
                  //             ],
                  //           )),
                  //       Padding(
                  //         padding: const EdgeInsets.all(8.0),
                  //         child: GestureDetector(
                  //           onTap: () {
                  //             // FormData formData = new FormData.fromMap({
                  //             //   'email': 'showvikmirza@gmail.co',
                  //             //   'password': '1234%৳#@'
                  //             // });
                  //             // Dio dio = Dio();
                  //             // Response response = await dio.post(
                  //             //     "https://app.medicsbd.com/api/v2/auth/login",
                  //             //     data: formData,
                  //             //     options: Options(headers: {
                  //             //       // 'Content-Type': 'application/json',
                  //             //       // 'Accept': 'application/json'
                  //             //     }));
                  //             // print('REs $response');
                  //             // final loginApi = loginApiFromJson(response.toString());
                  //             // final loginApiFail =
                  //             //     loginApiFailFromJson(response.toString());
                  //             // // ignore: unrelated_type_equality_checks
                  //             // if (loginApiFail.code == '401') {
                  //             //   _showDialog();
                  //             // } else if (loginApi.tokenType == "bearer") {
                  //             //   print("welcome");
                  //             //   SharedPreferences pref =
                  //             //       await SharedPreferences.getInstance();
                  //             //   pref.setBool('islogedin', true);
                  //             //   Navigator.pushReplacement(
                  //             //       context,
                  //             //       MaterialPageRoute(
                  //             //           builder: (_) => BottomNavi_Home()));
                  //             // }

                  //             // print('sth wrong');
                  //             // _showDialog();
                  //             if (_loginForm.currentState.validate()) {
                  //               Login();
                  //             } else {
                  //               print("invalid");
                  //             }
                  //           },
                  //           child: Container(
                  //             height: 50,
                  //             width: 275,
                  //             decoration: BoxDecoration(
                  //               borderRadius: BorderRadius.circular(25),
                  //               color: Color(0xff4CB848),
                  //             ),
                  //             child: Center(
                  //               child: Text(
                  //                 context.watch<Counter>().count
                  //                     ? 'সাইন ইন'
                  //                     : 'Sign In',
                  //                 style: TextStyle(
                  //                     fontSize: 18,
                  //                     fontFamily: 'Montserrat',
                  //                     color: Colors.white),
                  //               ),
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  SingleChildScrollView(
                child: Form(
                  key: _loginForm,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextFormField(
                          controller: _userName,
                          validator: (value) {
                            RegExp regex = new RegExp(emailPattern);
                            if (value.isEmpty) {
                              return 'Email can not be empty';
                            }
                            //  else if (!regex.hasMatch(value)) {
                            //   return 'Enter Valid Email Format';
                            // }

                            return null;
                          },
                          decoration: new InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.grey[200], width: 0.0),
                                borderRadius: BorderRadius.circular(10)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.grey[200], width: 0.0),
                                borderRadius: BorderRadius.circular(10)),
                            errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.red[300], width: 0.0),
                                borderRadius: BorderRadius.circular(10)),
                            focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.red[300], width: 0.0),
                                borderRadius: BorderRadius.circular(10)),
                            fillColor: Colors.grey[200],
                            filled: true,
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.email,
                              color: kgreen,
                            ),
                            hintText: 'Email',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 15),
                        child: TextFormField(
                          controller: _userPassword,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Password can not be empty';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.grey[200], width: 0.0),
                                borderRadius: BorderRadius.circular(10)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.grey[200], width: 0.0),
                                borderRadius: BorderRadius.circular(10)),
                            errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.red[300], width: 0.0),
                                borderRadius: BorderRadius.circular(10)),
                            focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.red[300], width: 0.0),
                                borderRadius: BorderRadius.circular(10)),

                            hintText: 'Password',
                            fillColor: Colors.grey[200],
                            filled: true,
                            //          hintStyle: TextStyle(fontSize: 12.0),
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.lock_open,
                              color: kgreen,
                            ),
                            suffixIcon: IconButton(
                              icon: userPasswordVisible
                                  ? Icon(Icons.visibility, color: kgreen)
                                  : Icon(Icons.visibility_off, color: kgreen),
                              onPressed: UserPasswordToggle,
                            ),
                          ),
                          obscureText: userPasswordVisible ? false : true,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              new MaterialPageRoute(
                                  builder: (context) => ResetPassword()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Forget Password ?",
                                style: TextStyle(color: kgreen),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 15),
                        child: GestureDetector(
                          onTap: () {
                            if (_loginForm.currentState.validate()) {
                              Login();
                            } else {
                              print("invalid");
                            }
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xff4CB848),
                                borderRadius: BorderRadius.circular(15)),
                            height: 60.0,
                            // width: MediaQuery.of(context).size.width * 0.8,
                            child: Center(
                              child: Text(
                                "Login",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            context.watch<Counter>().count
                                ? 'আকাইন্ট নেই?'
                                : 'Don\'t have an account?',
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushReplacement(
                                    new MaterialPageRoute(
                                        builder: (context) => SignUp()));
                              },
                              child: Text(
                                context.watch<Counter>().count
                                    ? 'সাইন আপ'
                                    : 'Sign Up',
                                style: TextStyle(
                                  color: Color(0xff4CB848),
                                ),
                              )),
                        ],
                      )
                    ],
                  ),
                ),
              )),
          // Padding(
          //   padding: EdgeInsets.only(top: 700),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       Text(
          //         context.watch<Counter>().count
          //             ? 'আকাইন্ট নেই?'
          //             : 'Don\'t have an account?',
          //         style: TextStyle(
          //           fontSize: 14,
          //           fontWeight: FontWeight.bold,
          //           fontFamily: 'Montserrat',
          //           //  color: Color(0xff4CB848),
          //         ),
          //       ),
          //       GestureDetector(
          //           onTap: () {
          //             Navigator.push(
          //               context,
          //               MaterialPageRoute(builder: (context) => SignUp()),
          //             );
          //           },
          //           child: Text(
          //             context.watch<Counter>().count ? 'সাইন আপ' : 'Sign Up',
          //             style: TextStyle(
          //               fontSize: 14,
          //               fontWeight: FontWeight.bold,
          //               fontFamily: 'Montserrat',
          //               color: Color(0xff4CB848),
          //             ),
          //           )),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  void UserPasswordToggle() {
    if (userPasswordVisible) {
      userPasswordVisible = false;
    } else {
      userPasswordVisible = true;
    }

    setState(() {
      // ignore: unnecessary_statements
      userPasswordVisible;
    });
  }

  // ignore: non_constant_identifier_names
  void Login() async {
    try {
      CircularIndicator();

      FormData formData = new FormData.fromMap(
          {'email': _userName.text, 'password': _userPassword.text});
      Dio dio = Dio();
      Response response =
          await dio.post("https://app.medicsbd.com/api/v2/auth/login",
              data: formData,
              options: Options(headers: {
                // 'Content-Type': 'application/json',
                // 'Accept': 'application/json'
              }));
      print('REs $response');
      final loginApi = loginApiFromJson(response.toString());
      final loginApiFail = loginApiFailFromJson(response.toString());
      // ignore: unrelated_type_equality_checks
      // if (loginApiFail.code == '401') {
      //   _showDialog();
      // } else
      if (loginApi.tokenType == "bearer") {
        print("welcome");
        SharedPreferences pref = await SharedPreferences.getInstance();
        pref.setBool('islogedin', true);
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => BottomNavi_Home()));
        Navigator.of(context, rootNavigator: true).pop();
      } else if (loginApiFail.code == 401) {
        Navigator.of(context, rootNavigator: true).pop();
        ShowErrorDialog(response.toString());
      } else {
        Navigator.of(context, rootNavigator: true).pop();
        ShowErrorDialog("Your Internet is not Working Properly");
      }
    } catch (e) {
      Navigator.of(context, rootNavigator: true).pop();
      ShowErrorDialog("Check Your Email/Phone/Password Combination");
      print("Error:" + e.toString());
    }
  }

  // void GetCurrentData(String username) async
  // {
  //   try {
  //    // CircularIndicator();

  //     String url = "http://pscore-sandbox-3.herokuapp.com/utils/inspect/506623120463/$username/userdata&user_id?app=snapfill";

  //     //print("Json is:"+json);

  //     Response response = await get(url);

  //     print("Response status code:"+response.statusCode.toString());
  //     print("Current data Response body:"+response.body);

  //     if(response.statusCode == 200)
  //     {
  //       Navigator.of(context, rootNavigator: true).pop();

  //       currentData = jsonDecode(response.body);

  //       print("Nounce:"+currentData["data"]["userdata"]["current_nonce_base"].toString());
  //       print("USer Id:"+currentData["data"]["user_id"]);

  //       await shPrefApp.SetSignUpInformation(currentData["data"]["userdata"]["current_nonce_base"], currentData["data"]["user_id"],);

  //       //ToastFunction("Login Successfully");
  //       Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
  //           FirstTimeScreen(0)), (Route<dynamic> route) => false);

  //     }

  //     else if(response.statusCode == 400)
  //     {
  //       Navigator.of(context, rootNavigator: true).pop();
  //       ShowErrorDialog(jsonDecode(response.body)["message"]);
  //     }

  //     else
  //     {
  //       Navigator.of(context, rootNavigator: true).pop();
  //       ShowErrorDialog("Your Internet is not Working Properly");
  //     }
  //   }
  //   catch(e) {
  //     Navigator.of(context, rootNavigator: true).pop();
  //     ShowErrorDialog("Check Your Internet Connection");
  //     print("Error:"+e.toString());
  //   }
  // }

  // ignore: non_constant_identifier_names
  void CircularIndicator() {
    AppAlertDialog.ShowDialog(context, "Logging in");
  }

  // ignore: non_constant_identifier_names
  void ShowErrorDialog(String ErrorMessage) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return WillPopScope(
            onWillPop: () {},
            child: Dialog(
              insetPadding: EdgeInsets.symmetric(horizontal: 25.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)), //this right here
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.015,
                  ),
                  // Image(
                  //   image: AssetImage("images/errorimage.png"),
                  //   width: 50.0,
                  //   height: 50.0,
                  // ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.05,
                        right: MediaQuery.of(context).size.width * 0.05),
                    child: Text(
                      ErrorMessage,
                      style: TextStyle(
                          color: Color.fromARGB(0XFF, 0X3E, 0X40, 0X46)),
                      textScaleFactor: 1.2,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      //width: MediaQuery.of(context).size.width*0.5,
                      //height: MediaQuery.of(context).size.height*0.05,
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.05,
                          right: MediaQuery.of(context).size.width * 0.05,
                          top: MediaQuery.of(context).size.height * 0.015,
                          bottom: MediaQuery.of(context).size.height * 0.015),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: kgreen),
                      child: Text(
                        "Okay, Acknowledge",
                        style: TextStyle(
                            color: Color.fromARGB(0XFF, 0XFF, 0XFF, 0XFF),
                            fontWeight: FontWeight.bold),
                        textScaleFactor: 0.9,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.025,
                  ),
                ],
              ),
            ),
          );
        });
  }

  // ignore: non_constant_identifier_names
  void ToastFunction(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: kgreen,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }
}
