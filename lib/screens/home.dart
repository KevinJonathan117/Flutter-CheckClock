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
                  Image.network(
                    "https://img-premium.flaticon.com/png/512/714/714390.png?token=exp=1621101223~hmac=c7f0b43945130feb356a420f34395732",
                    width: 100,
                    height: 100,
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
                  Image.network(
                    "https://img-premium.flaticon.com/png/512/1170/1170667.png?token=exp=1621101486~hmac=30f4ebf737d904478176c3239769ca36",
                    width: 100,
                    height: 100,
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
                  Image.network(
                    "https://img-premium.flaticon.com/png/512/747/747310.png?token=exp=1621101545~hmac=d24acbc439966f0b940738a2ff91a365",
                    width: 100,
                    height: 100,
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
                  Image.network(
                    "https://img-premium.flaticon.com/png/512/3594/3594449.png?token=exp=1621101670~hmac=9a373b1138ef81f2b08a15cc2bd3c3b8",
                    width: 100,
                    height: 100,
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
                  Image.network(
                    "https://img-premium.flaticon.com/png/512/565/565526.png?token=exp=1621101690~hmac=01a56451c7ec7079468cf39fa6ba18ca",
                    width: 100,
                    height: 100,
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
                  Image.network(
                    "https://img-premium.flaticon.com/png/512/906/906794.png?token=exp=1621101737~hmac=6ae553b28cf34b8a2286c32b9df4dcd4",
                    width: 100,
                    height: 100,
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
