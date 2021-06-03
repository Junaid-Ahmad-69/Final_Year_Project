import 'package:blood_with_visual_studio/receiver_submit_button_map_markers.dart';
import 'package:flutter/material.dart';
import 'receiver_submit_button_map_markers.dart';

class receiver extends StatefulWidget {
  @override
  _receiverState createState() => _receiverState();
}

class _receiverState extends State<receiver> {
  List<String> city = ['Lahore', 'Karachi', 'Sargodha'];
  List<String> lahoreHospital = ['Gang Ram', 'Fatima Medical', 'DHA Hospital'];
  List<String> karachiHospital = [
    'Ghulab Devi',
    'Amna Hospital',
    'Sultan Hospital'
  ];
  List<String> sarHospital = [
    'Bilal Medicare',
    'Shokat Khanam',
    'Khan Hospital'
  ];

  List<String> empty = [];
  String selectCity;
  String selectHospital;
  String hos2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Receiver'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Container(
                width: 210,
                height: 70,
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: Colors.red,
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                  //borderRadius: BorderRadius.circular(12.0),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    hint: Text(
                      'Select City',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        //fontWeight: FontWeight.bold,
                      ),
                    ),
                    dropdownColor: Colors.grey,
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                    ),
                    iconSize: 30.0,
                    value: selectCity,
                    items: city.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (city) {
                      if (city == 'Lahore') {
                        empty = lahoreHospital;
                      } else if (city == 'Karachi') {
                        empty = karachiHospital;
                      } else if (city == 'Sargodha') {
                        empty = sarHospital;
                      } else {
                        empty = [];
                      }
                      setState(() {
                        selectHospital = null;
                        selectCity = city;
                      });
                    },
                  ),
                ),
              ),
            ),
            // Country Dropdown Ends here

            // Province Dropdown
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Container(
                width: 210,
                height: 70,
                padding: EdgeInsets.all(
                  5.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.red,
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                  //borderRadius: BorderRadius.circular(12.0),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    hint: Text(
                      'Select Hospital',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    dropdownColor: Colors.grey,
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                    ),
                    iconSize: 30.0,
                    value: selectHospital,
                    //isExpanded: true,
                    items: empty.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (empty) {
                      setState(() {
                        selectHospital = empty;
                      });
                    },
                  ),
                ),
              ),
            ),
            // ignore: deprecated_member_use
            Container(
              width: 290,
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                // ignore: deprecated_member_use
                child: RaisedButton(
                  color: Colors.red,
                  splashColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              receiver_submit_button_map_markers()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "SUBMIT",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // Province Dropdown Ends here
          ],
        ),
      ),
    );
  }
}
