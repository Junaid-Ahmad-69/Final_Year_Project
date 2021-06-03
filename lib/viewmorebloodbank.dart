import 'dart:async';
import 'package:blood_with_visual_studio/receiver_submit_button_map_markers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'donor_info_page.dart';

class viewmorebloodbank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
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
  List<Marker> myMarker = [];
  Completer<GoogleMapController> _controller = Completer();
  CameraPosition _currentPosition = CameraPosition(
    target: LatLng(31.6947462, 73.9923036),
    zoom: 7,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Blood Bank",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              fontFamily: "Raleway-Regular",
            ),
          ),
        ),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 25.0,
                ),
                child: CircleAvatar(
                  radius: 60.0,
                  backgroundColor: Colors.red,
                  child: CircleAvatar(
                    radius: 58,
                    backgroundColor: Colors.white,
                    child: Image.asset(
                      "images/logo2.png",
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20.0,
                ),
                child: Text(
                  'Fatima Jinnah Hospital, Lahore',
                  style: TextStyle(
                    fontFamily: 'Raleway-Regular',
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.red,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20.0,
                ),
                child: Text(
                  'Contact',
                  style: TextStyle(
                    fontFamily: 'Raleway-Regular',
                    fontWeight: FontWeight.w800,
                    fontSize: 18.0,
                    color: Colors.red,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 18.0,
                    ),
                    // ignore: deprecated_member_use
                    child: RaisedButton(
                      padding: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 85.0,
                      ),
                      color: Colors.red,
                      splashColor: Colors.grey.shade400,
                      onPressed: () {},
                      child: Text(
                        "Follow",
                        style: TextStyle(
                          fontSize: 18.8,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'Raleway-Regular',
                          letterSpacing: 2.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 160.0,
                  top: 13.0,
                ),
                child: Column(
                  children: [
                    Text(
                      'Location',
                      style: TextStyle(
                        fontSize: 16.8,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                        fontFamily: 'Raleway-Regular',
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 257,
                  height: 176,
                  color: Colors.redAccent,
                  child: Container(
                    child: GoogleMap(
                      initialCameraPosition: _currentPosition,
                      onMapCreated: (GoogleMapController controller) {
                        _controller.complete();
                      },
                      markers: {
                        marker1Marker,
                        marker2Marker,
                        marker3Marker,
                        marker4Marker
                      },
                    ),
                    width: 250,
                    height: 170,
                    color: Colors.redAccent,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text(
                      'Blood Available Detail',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'Raleway-Regular',
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                        letterSpacing: 1.0,
                      ),
                    ),
                    Table(
                      border: TableBorder.all(),
                      children: [
                        TableRow(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text(
                                "Blood Type",
                                style: TextStyle(
                                  fontSize: 13.0,
                                  fontFamily: 'Raleway-Regular',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text(
                                "Antigen Present ",
                                style: TextStyle(
                                  fontSize: 13.0,
                                  fontFamily: 'Raleway-Regular',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text(
                                "A+",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontFamily: 'Raleway-Regular',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text(
                                "A,Rh ",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontFamily: 'Raleway-Regular',
                                ),
                              ),
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text(
                                "A-",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontFamily: 'Raleway-Regular',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text(
                                "A ",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontFamily: 'Raleway-Regular',
                                ),
                              ),
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text(
                                "B+",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontFamily: 'Raleway-Regular',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text(
                                "B,Rh ",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontFamily: 'Raleway-Regular',
                                ),
                              ),
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text(
                                "B-",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontFamily: 'Raleway-Regular',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text(
                                "B ",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontFamily: 'Raleway-Regular',
                                ),
                              ),
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text(
                                "O+",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontFamily: 'Raleway-Regular',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text(
                                "Rh ",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontFamily: 'Raleway-Regular',
                                ),
                              ),
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text(
                                "O-",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontFamily: 'Raleway-Regular',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text(
                                "None ",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontFamily: 'Raleway-Regular',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Marker marker1Marker = Marker(
  markerId: MarkerId('marker1Marker'),
  position: LatLng(32.166351, 74.195900),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueRed,
  ),
);
Marker marker2Marker = Marker(
  markerId: MarkerId('marker2Marker'),
  position: LatLng(31.418715, 73.079109),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueRed,
  ),
);

Marker marker3Marker = Marker(
  markerId: MarkerId('marker3Marker'),
  position: LatLng(31.716661, 73.985023),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueRed,
  ),
);
Marker marker4Marker = Marker(
  markerId: MarkerId('marker4Marker'),
  position: LatLng(32.082466, 72.669128),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueRed,
  ),
);
