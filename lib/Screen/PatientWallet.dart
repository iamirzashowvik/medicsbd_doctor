import 'package:flutter/material.dart';
import 'package:medicsbd_doctor/Screen/DoctorWallet.dart';
// import 'package:medicsbd/Screen/Pricing_plan2_29.dart';
import 'package:medicsbd_doctor/model/text.dart';
import 'package:provider/provider.dart';
import '../main.dart';
import 'Pricing_Plan_1_28.dart';
import 'Pricing_plan2_29.dart';

class PatientWallet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('My Wallet',
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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            WalletContainer('My Balance', '\$2500'),
            WalletContainer('Total Expences', '\$2500'),
            WalletContainer('My Package', 'Family Package 2'),
            Packages(),
            WalletContainer('Reporting Time', '2 month 3 days'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Pricing_Plan_1_28()),
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
                          ? 'নতুন পরিবার প্যাকেজ যুক্ত করুন'
                          : 'Add New Family Package',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Montserrat',
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            //
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Pricing_Plan_1_29()),
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
                          ? 'নতুন এক্সপ্ল্রিট প্যাকেজ যুক্ত করুন'
                          : 'Add New Exptriate Package',
                      style: TextStyle(
                          fontSize: 18,
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
    );
  }
}
