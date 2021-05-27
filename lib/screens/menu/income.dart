import 'package:flutter/material.dart';
import 'package:check_clock/models/income_salary.dart';

class Income extends StatelessWidget {
  List<IncomeSalary> incomeSalary = [
    IncomeSalary(tanggal: "28 Februari 2021", nominal: 3175000),
    IncomeSalary(tanggal: "27 Januari 2021", nominal: 4051000),
    IncomeSalary(tanggal: "28 Desember 2020", nominal: 2150000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Income'),
        backgroundColor: Colors.blue[800],
        elevation: 0,
      ),
      body: Container(
        child: ListView.builder(
            itemCount: incomeSalary.length,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: Text(incomeSalary[index].tanggal),
                    ),
                    leading: Icon(Icons.monetization_on_rounded),
                    trailing: Text(
                      "Rp ${incomeSalary[index].nominal}",
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
