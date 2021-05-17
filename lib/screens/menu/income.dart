import 'package:flutter/material.dart';
import 'package:check_clock/shared/drawer.dart';

class Income extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Income'),
        backgroundColor: Colors.blue[800],
        elevation: 0,
      ),
      //drawer: DrawerComponent(),
    );
  }
}