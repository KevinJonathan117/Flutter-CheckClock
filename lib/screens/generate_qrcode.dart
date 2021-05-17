import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:intl/intl.dart';

class GenerateQRCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('kk:mm:ss \n EEE d MMM').format(now);
    return Scaffold(
      appBar: AppBar(
        title: Text('Your QR Code'),
        backgroundColor: Colors.blue[800],
        elevation: 0,
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 100),
            Center(
              child: QrImage(
                data: "KevinJonathan_" + formattedDate,
                version: QrVersions.auto,
                size: 400.0,
                foregroundColor: Colors.blue[800],
              ),
            ),
            SizedBox(height: 100),
            Center(
              child: Text(
                "Scan this QR Code on your workplace",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
