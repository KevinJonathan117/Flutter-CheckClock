import 'package:flutter/material.dart';
import 'package:check_clock/shared/drawer.dart';

class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
        backgroundColor: Colors.blue[800],
        elevation: 0,
      ),
      drawer: DrawerComponent(),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                "© Check-Clock 2021",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Text(
                "Developed by Technopreneurship II Kelompok 25",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 50),
              Text(
                "Phone: +6281234567890",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 25),
              Text(
                "LINE OA: @checkclock.id",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 25),
              Text(
                "IG: @checkclock.id",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 25),
              Text(
                "Email: info@checkclock.co.id",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
