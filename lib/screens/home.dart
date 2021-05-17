import 'package:check_clock/screens/menu/help.dart';
import 'package:check_clock/screens/menu/history.dart';
import 'package:check_clock/screens/menu/income.dart';
import 'package:check_clock/screens/menu/progress_track.dart';
import 'package:check_clock/screens/menu/calendar.dart';
import 'package:check_clock/screens/menu/scan_absen.dart';
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ScanAbsen()));
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProgressTrack()));
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
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Calendar()));
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
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Income()));
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
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => History()));
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
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Help()));
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
