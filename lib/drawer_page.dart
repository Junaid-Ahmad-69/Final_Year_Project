import 'package:flutter/material.dart';
import 'Login.dart';

class drawer_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.red,
                    Colors.white,
                  ],
                ),
              ),
              child: Container(
                child: Column(
                  children: [
                    Material(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "images/logo2.png",
                          width: 100.0,
                          height: 100.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            customicon(Icons.person, 'Profile', () => {}),
            customicon(Icons.notifications, 'Notification', () => {}),
            customicon(Icons.settings, 'Setting', () => {}),
            customicon(
                Icons.lock,
                'Log Out/Sign Out',
                () => {
                      Navigator.push(
                        (context),
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        ),
                      ),
                    }),
          ],
        ),
      ),
      /*appBar: AppBar(
        actions: [
          IconButton(
            icon: Image.asset(
              "assets/images/logo2.png",
              color: Colors.white,
            ),
          ),
        ],
        centerTitle: true,
        title: Text(
          "Donor",
          style: TextStyle(
            fontSize: 26.0,
            fontWeight: FontWeight.bold,
            fontFamily: "Raleway-Regular",
          ),
        ),
      ),*/
    );
  }
}

class customicon extends StatelessWidget {
  IconData icon;
  String text;
  Function onTap;
  customicon(this.icon, this.text, this.onTap);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.grey.shade400,
            ),
          ),
        ),
        child: InkWell(
          splashColor: Colors.grey.shade400,
          onTap: onTap,
          child: Container(
            height: 50.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Icon(icon),
                      SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        text,
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(Icons.arrow_right),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
