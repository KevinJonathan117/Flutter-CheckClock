import 'package:flutter/material.dart';
import 'package:check_clock/models/attendance_history.dart';

class History extends StatelessWidget {
  List<AttendanceHistory> attendanceHistory = [
    AttendanceHistory(
        tanggal: "2 Desember 2020", status: "Absen", masuk: "-", keluar: "-"),
    AttendanceHistory(
        tanggal: "1 Desember 2020",
        status: "Hadir",
        masuk: "7:30",
        keluar: "19:00"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('History Absensi'),
        backgroundColor: Colors.blue[800],
        elevation: 0,
      ),
      body: Container(
        child: ListView.builder(
            itemCount: attendanceHistory.length,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: Text(
                        attendanceHistory[index].tanggal,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    subtitle: Text(
                        "${attendanceHistory[index].masuk} until ${attendanceHistory[index].keluar}"),
                    leading: Icon(Icons.history),
                    trailing: Text(attendanceHistory[index].status,),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
