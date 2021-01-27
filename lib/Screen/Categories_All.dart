import 'package:flutter/material.dart';
import 'package:medicsbd_doctor/model/Category.dart';

class AllCategories extends StatefulWidget {
  @override
  _AllCategoriesState createState() => _AllCategoriesState();
}

class _AllCategoriesState extends State<AllCategories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Categories',
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: GridView.count(
          shrinkWrap: false,
          childAspectRatio: 1.5,
          crossAxisCount: 2,
          children: List.generate(10, (index) {
            return Categories();
          }),
        ),
      ),
    );
  }
}
