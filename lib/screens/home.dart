import 'package:flutter/material.dart';
import 'package:check_clock/shared/drawer.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Check-Clock'),
        backgroundColor: Colors.blue[800],
        elevation: 0,
      ),
      drawer: DrawerComponent(),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: [
          InkResponse(
            onTap: () {
              print("Scan Absen");
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.qr_code,
                    size: 100,
                    color: Colors.blue[800],
                  ),
                  Text(
                    "Scan Absen",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                ],
              ),
            ),
          ),
          InkResponse(
            onTap: () {
              print("Progress Track");
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.bar_chart,
                    size: 100,
                    color: Colors.blue[800],
                  ),
                  Text(
                    "Progress Track",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                ],
              ),
            ),
          ),
          InkResponse(
            onTap: () {
              print("Calendar");
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.calendar_today,
                    size: 100,
                    color: Colors.blue[800],
                  ),
                  Text(
                    "Calendar",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                ],
              ),
            ),
          ),
          InkResponse(
            onTap: () {
              print("Income");
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.money,
                    size: 100,
                    color: Colors.blue[800],
                  ),
                  Text(
                    "Income",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                ],
              ),
            ),
          ),
          InkResponse(
            onTap: () {
              print("History Absensi");
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.history,
                    size: 100,
                    color: Colors.blue[800],
                  ),
                  Text(
                    "History Absensi",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                ],
              ),
            ),
          ),
          InkResponse(
            onTap: () {
              print("Help");
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.help,
                    size: 100,
                    color: Colors.blue[800],
                  ),
                  Text(
                    "Help",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
