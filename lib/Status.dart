import 'package:blood_with_visual_studio/receiver_submit_button_map_markers.dart';
import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: _homepage(),
    );
  }
}

class _homepage extends StatefulWidget {
  @override
  __homepageState createState() => __homepageState();
}

class __homepageState extends State<_homepage> {
  DateTime _date = DateTime.now();
  Future<Null> _selectDate(BuildContext context) async {
    DateTime _datePicker = await showDatePicker(
        context: context,
        initialDate: _date,
        firstDate: DateTime(1947),
        lastDate: DateTime(2100));
    if (_datePicker != null && _datePicker != _date) {
      setState(() {
        _date = _datePicker;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(
          child: Text(
            "Status",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              fontFamily: "Raleway-Regular",
              color: Colors.white,
            ),
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 0,
                ),
                Container(
                  margin: EdgeInsets.only(top: 0, left: 0, right: 5),
                  //color: Colors.red,
                  //constraints: BoxConstraints(maxHeight: 120, maxWidth: 120),
                  height: 130,
                  width: 130,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      border: Border.all(
                          color: Colors.red,
                          width: 20.0,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: Image(
                    image: AssetImage('images/recever.png'),
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6, right: 20, left: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade300,
                      filled: true,
                      labelText: 'Receiver Name',
                      hintText: 'Full Name',
                      // suffixIcon: IconButton(
                      //   icon: Icon(Icons.close),
                      //   // onPressed: () => emailController.clear(),
                      // ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6, right: 20, left: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade300,
                      filled: true,
                      labelText: ' Hospital',
                      hintText: 'Enter Hospital',
                      // suffixIcon: IconButton(
                      //   icon: Icon(Icons.close),
                      //   // onPressed: () => emailController.clear(),
                      // ),
                      // //hintText: '',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 6, right: 20, left: 20),
                  child: TextField(
                    readOnly: true,
                    cursorColor: Colors.red,
                    onTap: () {
                      setState(() {
                        _selectDate(context);
                      });
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade300,
                      filled: true,
                      labelText: 'Select Date',
                      hintText: (_date.toString()),

                      // suffixIcon: IconButton(
                      //   icon: Icon(Icons.close),
                      //   // onPressed: () => emailController.clear(),
                      // ),
                      //hintText: '',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                ),
                // buildCheckbox(),

                SizedBox(
                  height: 25.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 355,
                    height: 60,
                    // ignore: deprecated_member_use
                    child: RaisedButton(
                      onPressed: () {
                        print("object");
                      },
                      color: Colors.red,
                      child: Text(
                        "Submit",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
