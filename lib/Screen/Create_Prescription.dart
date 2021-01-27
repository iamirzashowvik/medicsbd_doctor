import 'package:flutter/material.dart';
import 'package:medicsbd_doctor/model/color.dart';
import 'package:medicsbd_doctor/model/shadow.dart';
import 'package:medicsbd_doctor/model/text.dart';

class CreatePrescription extends StatefulWidget {
  @override
  _CreatePrescriptionState createState() => _CreatePrescriptionState();
}

class _CreatePrescriptionState extends State<CreatePrescription> {
  bool _value1 = true;
  bool _value2 = false;
  void check1(bool value) {
    setState(() {
      _value1 = !_value1;
      _value2 = !_value2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Create Prescription',
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
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
              child: TextBlackB('Basic Info', 15),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
              child: Container(
                height: 45,
                width: double.maxFinite,
                child: DropdownButton(
                  items: null,
                  onChanged: null,
                  hint: Text('Select Patient'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
              child: Container(
                height: 45,
                width: double.maxFinite,
                child: DropdownButton(
                  items: null,
                  onChanged: null,
                  hint: Text('Select Patient from Appoinment'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
              child: Container(
                height: 45,
                // width: 359,
                // color: kgreen,
                child: Center(
                  child: TextField(
                      decoration: InputDecoration(
                    hintText: 'Write Some Advice',
                  )),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
              child: Container(
                height: 45,
                // width: 359,
                // color: kgreen,
                child: Center(
                  child: TextField(
                      decoration: InputDecoration(
                    hintText: 'Write Investigations Report',
                  )),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextBlackB('Prescription Info', 15),
                  Container(
                    height: 20,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: kBlue,
                    ),
                    child: Center(
                      child: Text('Patient History',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                            color: Colors.white,
                          )),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
              child: Container(
                height: 45,
                // width: 359,
                // color: kgreen,
                child: Center(
                  child: TextField(
                      decoration: InputDecoration(
                    hintText: 'Major Concern',
                  )),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextBlackB('Diagnosis', 15),
                  Row(
                    children: [
                      Container(
                        height: 20,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: kBlue,
                        ),
                        child: Center(
                          child: Text('Add new',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat',
                                color: Colors.white,
                              )),
                        ),
                      ),
                      Icon(
                        Icons.delete,
                        color: kgreen,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
              child: Container(
                height: 45,
                // width: 359,
                // color: kgreen,
                child: Center(
                  child: TextField(
                      decoration: InputDecoration(
                    hintText: 'Title',
                  )),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
              child: Container(
                height: 45,
                // width: 359,
                // color: kgreen,
                child: Center(
                  child: TextField(
                      decoration: InputDecoration(
                    hintText: 'Details',
                  )),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      TextBlackB('Medicines', 15),
                      Text(
                        '   (2)',
                        style: TextStyle(color: kgreen, fontSize: 15),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      GestureDetector(
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
                                      child: SetReminder(),
                                    ),
                                  )));
                        },
                        child: Container(
                          height: 20,
                          width: 105,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: kBlue,
                          ),
                          child: Center(
                            child: Text('Set Reminder',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat',
                                  color: Colors.white,
                                )),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
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
                                      child: AddMedicine(),
                                    ),
                                  )));
                        },
                        child: Container(
                          height: 20,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: kgreen,
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
                    ],
                  )
                ],
              ),
            ),
            Medicines(),
            Medicines(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
              child: Container(
                // color: kgreen,
                width: double.maxFinite,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextBlackB('Status', 14),
                      GestureDetector(
                        child: Row(
                          children: [
                            Checkbox(
                              value: _value1,
                              onChanged: check1,
                              checkColor: kgreen,
                              activeColor: kgreen,
                            ),
                            TextBlackB('Show', 14)
                          ],
                        ),
                      ),
                      GestureDetector(
                        child: Row(
                          children: [
                            Checkbox(
                              value: _value2,
                              onChanged: check1,
                              checkColor: kgreen,
                              activeColor: kgreen,
                            ),
                            TextBlackB('Hide', 14)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
              child: Container(
                height: 50,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xff4CB848),
                ),
                child: Center(
                  child: Text(
                    'Submit Now',
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
    );
  }
}

class Medicines extends StatelessWidget {
  const Medicines({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
      child: Container(
        height: 50,
        width: 315,
        decoration: kboxDecoration,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              'Assets/Images/127234903_901986727002233_5830790732605941395_n.jpg',
              height: 30,
              width: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextBlackB('Vitamin C', 13),
                TextBlackB('1 pill,After meal', 11),
              ],
            ),
            TextBlackB('1+1+1', 14),
            Icon(
              Icons.delete,
              color: kgreen,
            ),
          ],
        ),
      ),
    );
  }
}

class AddMedicine extends StatefulWidget {
  @override
  _AddMedicineState createState() => _AddMedicineState();
}

class _AddMedicineState extends State<AddMedicine> {
  var _date1;
  var _date2;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315,
      child: Center(
        child: Column(
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
                    child: Text(
                      'Add New Medicine',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white),
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
                  hintText: 'Medicine Name',
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
                hint: Text('Medicine Type'),
              ),
            ),
            Container(
              height: 45,
              width: 280,
              // color: kgreen,
              child: DropdownButton(
                items: null,
                onChanged: null,
                hint: Text('Doasage'),
              ),
            ),
            Container(
              height: 45,
              width: 280,
              // color: kgreen,
              child: Center(
                child: TextField(
                    decoration: InputDecoration(
                  hintText: 'Days',
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
                  hintText: 'Instructions',
                )),
              ),
            ),
            Container(
              height: 45,
              width: 280,
              child: ListTile(
                leading: Text(
                  'Starting Date',
                ),
                title: _date1 == null ? Container() : Text(_date1),
                trailing: IconButton(
                    icon: Icon(Icons.calendar_today),
                    onPressed: () {
                      showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2020),
                              lastDate: DateTime(2100))
                          .then((date) {
                        setState(() {
                          _date1 = date.toString().split(" ")[0];
                          print(_date1);
                        });
                      });
                    }),
              ),
            ),
            Container(
              height: 45,
              width: 280,
              child: ListTile(
                leading: Text(
                  'Ending Date',
                ),
                title: _date2 == null ? Container() : Text(_date2),
                trailing: IconButton(
                    icon: Icon(Icons.calendar_today),
                    onPressed: () {
                      showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2020),
                              lastDate: DateTime(2100))
                          .then((date) {
                        setState(() {
                          _date2 = date.toString().split(" ")[0];
                          print(_date2);
                        });
                      });
                    }),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 50,
                width: 280,
                color: kBlue,
                child: Center(
                  child: Text(
                    'Add Medicine',
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

class SetReminder extends StatefulWidget {
  @override
  _SetReminderState createState() => _SetReminderState();
}

class _SetReminderState extends State<SetReminder> {
  var _date1;
  var _date2;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315,
      child: Center(
        child: Column(
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
                    child: Text(
                      'Set Reminder',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white),
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
                  hintText: 'Medicine Name',
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
                hint: Text('Dosage'),
              ),
            ),
            Container(
              height: 45,
              width: 280,
              // color: kgreen,
              child: Center(
                child: TextField(
                    decoration: InputDecoration(
                  hintText: 'Concern',
                )),
              ),
            ),
            Container(
              height: 45,
              width: 280,
              child: ListTile(
                leading: Text(
                  'Starting Date',
                ),
                title: _date1 == null ? Container() : Text(_date1),
                trailing: IconButton(
                    icon: Icon(Icons.calendar_today),
                    onPressed: () {
                      showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2020),
                              lastDate: DateTime(2100))
                          .then((date) {
                        setState(() {
                          _date1 = date.toString().split(" ")[0];
                          print(_date1);
                        });
                      });
                    }),
              ),
            ),
            Container(
              height: 45,
              width: 280,
              child: ListTile(
                leading: Text(
                  'Ending Date',
                ),
                title: _date2 == null ? Container() : Text(_date2),
                trailing: IconButton(
                    icon: Icon(Icons.calendar_today),
                    onPressed: () {
                      showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2020),
                              lastDate: DateTime(2100))
                          .then((date) {
                        setState(() {
                          _date2 = date.toString().split(" ")[0];
                          print(_date2);
                        });
                      });
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 20, width: 280, child: TextBlackB('Time', 14)),
            ),
            Container(
              height: 45,
              width: 280,
              child: Row(
                children: [
                  Container(
                    height: 30,
                    width: 80,
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
                        '8 AM',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Montserrat',
                            color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: kgreen,
                      height: 30,
                      width: 30,
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 50,
                width: 280,
                color: kBlue,
                child: Center(
                  child: Text(
                    'Set Now',
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
