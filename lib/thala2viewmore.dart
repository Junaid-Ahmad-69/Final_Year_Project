import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
import 'package:flutter/cupertino.dart';

class thala2viewmore extends StatelessWidget {
  const thala2viewmore({Key key}) : super(key: key);

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
  const _homepage({Key key}) : super(key: key);

  @override
  __homepageState createState() => __homepageState();
}

class __homepageState extends State<_homepage> {
  Completer<GoogleMapController> _controller = Completer();

  CameraPosition _currentPosition = CameraPosition(
    target: LatLng(31.6947462, 73.9923036),
    zoom: 7,
  );
  Widget box1() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Container(
          width: 230,
          height: 90,
          color: Colors.red,
          padding: EdgeInsets.all(10.0),
          child: Text(
            "Junaid Ahmad\nLahore, SKP\nAnymomous",
            style: TextStyle(
              fontFamily: 'Raleway-Regular',
              fontSize: 14.0,
              color: Colors.white,
              height: 1.5,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Thalassemia",
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 10, 0, 0),
        child: Center(
          child: Container(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 63,
                  backgroundColor: Colors.red,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                      'images/junaid_foam1.png',
                    ),
                    backgroundColor: Colors.amber,
                    maxRadius: 60.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 0.0,
                  ),
                  child: Text(
                    'Junaid Ahmad\n 03134210104\n       AB+',
                    style: TextStyle(
                      fontFamily: 'Raleway-Regular',
                      fontWeight: FontWeight.bold,
                      color: Colors.redAccent[400],
                      fontSize: 18.0,
                      height: 1.5,
                      letterSpacing: 3.0,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // ignore: deprecated_member_use
                    RaisedButton(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 60.0,
                      ),
                      splashColor: Colors.grey.shade50,
                      color: Colors.redAccent,
                      onPressed: () {},
                      child: Text(
                        "Follow",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Raleway-Regular',
                          color: Colors.white,
                          letterSpacing: 3.0,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 140.0,
                        ),
                        child: Text(
                          'Location',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Raleway-Regular',
                            color: Colors.red,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        child: GoogleMap(
                          initialCameraPosition: _currentPosition,
                          onMapCreated: (GoogleMapController controller) {
                            _controller.complete();
                          },
                          markers: {
                            marker1Marker,
                            marker2Marker,
                            marker3Marker,
                            marker4Marker,
                          },
                        ),
                        width: 220,
                        height: 160,
                        color: Colors.red,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 11.0),
                        child: Text(
                          "Blood Donation Record ",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Raleway-Regular',
                            color: Colors.red,
                          ),
                        ),
                      ),
                      box1(),
                      box1(),
                    ],
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
