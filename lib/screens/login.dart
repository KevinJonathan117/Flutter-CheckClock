import 'package:flutter/material.dart';
import 'package:check_clock/screens/home.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.timer_rounded,
                  size: 200,
                  color: Colors.blue[800],
                ),
              ],
            ),
            SizedBox(height: 50),
            Text(
              "Check-Clock",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 300,
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email or Username',
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 300,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            FlatButton(
              color: Colors.blue[800],
              onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                child: Text(
                  "LOGIN",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            FlatButton(
              onPressed: () {},
              child: Text(
                "Forgot Password?",
                style: TextStyle(fontSize: 18, color: Colors.blue[800]),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            FlatButton(
              onPressed: () {},
              child: Text(
                "Call Customer Service",
                style: TextStyle(fontSize: 18, color: Colors.blue[800]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
