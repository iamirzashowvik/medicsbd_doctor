import 'package:flutter/material.dart';
import 'package:medicsbd_doctor/model/color.dart';

class DoctorWallet extends StatelessWidget {
  const DoctorWallet({Key key}) : super(key: key);

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
                            child: WithDrawPOPup(),
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
                  child: Text('Withdraw',
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
      body: Column(
        children: [
          WalletContainer('Current Balance', '\$2500'),
          WalletContainer('Total Earning', '\$2500'),
          WalletContainer('Pending for Withdraw', '\$2500'),
          WalletContainer('Total Lifted', '\$2500')
        ],
      ),
    );
  }
}

class WalletContainer extends StatelessWidget {
  final String title;
  final String _num;
  WalletContainer(this.title, this._num);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Container(
        // width: 315,
        height: 88,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                        color: Colors.black,
                      )),
                  Text('$_num',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                        color: kgreen,
                      )),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Image.asset(
                'Assets/Images/127234903_901986727002233_5830790732605941395_n.jpg',
                height: 42,
                width: 48,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class WithDrawPOPup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 45,
            width: 280,
            color: kgreen,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Withdraw Request',
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
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
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
                hintText: 'Enter Amount',
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
              hint: Text('Select Method'),
            ),
          ),
          Container(
            height: 45,
            width: 280,
            // color: kgreen,
            child: Center(
              child: TextField(
                  decoration: InputDecoration(
                hintText: 'Enter Account Number',
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
                hintText: 'Comment',
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                height: 45,
                width: 280,
                color: kBlue,
                child: Center(
                  child: Text(
                    'Submit Now',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
