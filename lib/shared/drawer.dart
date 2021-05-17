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
      child: Container(
        color: Colors.blue[800],
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
              leading: Icon(Icons.home, color: Colors.white),
              title: Text(
                'Home',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, _, __) => Home(),
                    ));
              },
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.white),
              title: Text(
                'Settings',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, _, __) => Settings(),
                    ));
              },
            ),
            ListTile(
              leading: Icon(Icons.phone, color: Colors.white),
              title: Text(
                'Contact Us',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, _, __) => ContactUs(),
                    ));
              },
            ),
            ListTile(
              leading: Icon(Icons.remove, color: Colors.white),
              title: Text(
                'Sign Out',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              onTap: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
