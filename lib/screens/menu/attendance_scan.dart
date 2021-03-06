import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class AttendanceScan extends StatefulWidget {
  @override
  _AttendanceScanState createState() => _AttendanceScanState();
}

class _AttendanceScanState extends State<AttendanceScan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scan Absen'),
        backgroundColor: Colors.blue[800],
        elevation: 0,
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 100),
            Center(
              child: QrImage(
                data: "KevinJonathan_" + DateTime.now().toString(),
                version: QrVersions.auto,
                size: 400.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
