import 'package:flutter/material.dart';
import 'package:check_clock/screens/home.dart';
import 'package:check_clock/screens/settings.dart';
import 'package:check_clock/screens/contactus.dart';
import 'package:check_clock/screens/login.dart';

class DrawerComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue[800],
            ),
            child: Text(
              'Check-Clock',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text(
              'Home',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                      pageBuilder: (context, _, __) => Home(),
                      transitionDuration: Duration(seconds: 0)));
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              'Settings',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                      pageBuilder: (context, _, __) => Settings(),
                      transitionDuration: Duration(seconds: 0)));
            },
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text(
              'Contact Us',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                      pageBuilder: (context, _, __) => ContactUs(),
                      transitionDuration: Duration(seconds: 0)));
            },
          ),
          ListTile(
            leading: Icon(Icons.remove),
            title: Text(
              'Sign Out',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                      pageBuilder: (context, _, __) => Login(),
                      transitionDuration: Duration(seconds: 0)));
            },
          ),
        ],
      ),
    );
  }
}
