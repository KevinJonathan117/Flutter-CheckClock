import 'package:flutter/material.dart';
import 'package:check_clock/screens/home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var errString = "";

  TextEditingController _usernameController;
  TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _usernameController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

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
                fontWeight: FontWeight.w900,
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
                controller: _usernameController,
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
                controller: _passwordController,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              errString,
              style: TextStyle(
                fontSize: 18,
                color: Colors.red,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            FlatButton(
              color: Colors.blue[800],
              onPressed: () {
                if (_usernameController.text == "kevin" &&
                    _passwordController.text == "123") {
                  setState(() {
                    errString = "";
                  });
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => Home()));
                } else {
                  setState(() {
                    errString = "Username/Password Salah!";
                  });
                }
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
