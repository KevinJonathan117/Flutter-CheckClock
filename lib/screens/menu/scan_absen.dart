import 'package:flutter/material.dart';
import 'package:check_clock/shared/drawer.dart';

class ScanAbsen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scan Absen'),
        backgroundColor: Colors.blue[800],
        elevation: 0,
      ),
      //drawer: DrawerComponent(),
    );
  }
}