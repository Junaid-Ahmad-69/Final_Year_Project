import 'dart:ui';
import 'package:blood_with_visual_studio/thalaViewmore.dart';
import 'package:blood_with_visual_studio/viewdonor.dart';
import 'package:flutter/cupertino.dart';
//import 'package:bloodportal/loginPage.dart';
import 'package:flutter/material.dart';
import 'labortary.dart';
// ignore: unused_import
//import 'package:get/get.dart';
//import 'package:get/get.dart';
// ignore: unused_import
import 'thalaViewmore.dart';
import 'viewmorebloodbank.dart';
import 'Login.dart';
import 'donor_info_page.dart';
import 'donor_info_page_blood_bank.dart';
// ignore: unused_import
import 'receiver.dart';
import 'drawer_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      title: "Blood Bank",
      home: _homepage(),
    );
  }
}

class _homepage extends StatefulWidget {
  const _homepage({Key key}) : super(key: key);

  @override
  __homepageState createState() => __homepageState();
}

class __homepageState extends State<_homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Blood Bank Donation App"),
      ),
      drawer: drawer_page(),
      body: Container(
        padding: EdgeInsets.only(
          top: 80.0,
          left: 60.0,
        ),
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                  child: Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        border: Border.all(
                            color: Colors.red,
                            width: 20.0,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    child: Image(
                      image: AssetImage('images/donor.png'),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => donor_info_page()),
                    );
                  },
                ),
                // Donor Part End
                SizedBox(
                  width: 100.0,
                ),
                InkWell(
                  child: Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        border: Border.all(
                            color: Colors.red,
                            width: 20.0,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    child: Image(
                      image: AssetImage('images/recever.png'),
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => receiver(),
                      ),
                    );
                  },
                ),
              ],
            ),
            //Receiver Part End
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 13.0, left: 22),
                  child: Text(
                    "Donor",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                      color: Colors.red,
                    ),
                  ),
                ),
                SizedBox(
                  width: 130,
                ),
                Container(
                  padding: EdgeInsets.only(top: 15.0, left: 10),
                  child: Text(
                    "Receiver",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                InkWell(
                  child: Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        border: Border.all(
                            color: Colors.red,
                            width: 20.0,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    child: Image(
                      image: AssetImage('images/bloodbank.png'),
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => donor_info_page_blood_bank(),
                      ),
                    );
                  },
                ),
                // Blood Bank Part End
                SizedBox(
                  width: 110.0,
                ),
                InkWell(
                  child: Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        border: Border.all(
                            color: Colors.red,
                            width: 20.0,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    child: Image(
                      image: AssetImage('images/thalassemia.png'),
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => thalaViewmore(),
                      ),
                    );
                  },
                ),
                // Labortory Part End
              ],
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 13.0, left: 0),
                  child: Text(
                    "Blood Bank",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                      color: Colors.red,
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,
                ),
                Container(
                  padding: EdgeInsets.only(top: 15.0, left: 0),
                  child: Text(
                    "Thalassemia",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  child: Container(
                    margin: EdgeInsets.only(left: 120),
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        border: Border.all(
                            color: Colors.red,
                            width: 20.0,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    child: Image(
                      image: AssetImage('images/laboratory.png'),
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => labortary(),
                      ),
                    );
                  },
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(
                top: 15.0,
                right: 50,
              ),
              child: Text(
                "Laboratory",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0,
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
