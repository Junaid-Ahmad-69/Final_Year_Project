import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class receiver_submit_button_map_markers extends StatelessWidget {
  const receiver_submit_button_map_markers({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      home: homepage(),
    );
  }
}

class homepage extends StatefulWidget {
  const homepage({Key key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  Completer<GoogleMapController> _controller = Completer();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.add_location,
          color: Colors.white,
        ),
        title: Center(
          child: Text(
            "Receiver Location",
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition: CameraPosition(
            target: LatLng(31.716661, 73.985023),
            zoom: 13.0,
          ),
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
          markers: {
            marker1Marker,
            marker2Marker,
            marker3Marker,
            marker4Marker,
          },
        ),
      ),
    );
  }
}

Marker marker1Marker = Marker(
  markerId: MarkerId('mark1'),
  position: LatLng(31.716661, 73.985023),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueRed,
  ),
);
Marker marker2Marker = Marker(
  markerId: MarkerId('mark2'),
  position: LatLng(31.71108, 73.97388),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker marker3Marker = Marker(
  markerId: MarkerId('mark3'),
  position: LatLng(31.71237, 73.97676),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker marker4Marker = Marker(
  markerId: MarkerId('mark4'),
  position: LatLng(31.71911, 73.95492),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
