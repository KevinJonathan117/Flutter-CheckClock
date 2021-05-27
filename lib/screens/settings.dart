import 'package:check_clock/screens/generate_qrcode.dart';
import 'package:flutter/material.dart';
import 'package:check_clock/shared/drawer.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool useBiometrics = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Colors.blue[800],
        elevation: 0,
      ),
      drawer: DrawerComponent(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            children: [
              Card(
                elevation: 5,
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GenerateQRCode()));
                  },
                  leading: Icon(Icons.person_rounded),
                  title: Text(
                    "Kevin Jonathan",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text("Administrator"),
                  trailing: Icon(Icons.qr_code),
                ),
              ),
              Card(
                elevation: 5,
                child: SwitchListTile(
                  value: useBiometrics,
                  title: Text(
                    "Use Biometrics",
                  ),
                  onChanged: (bool value) {
                    setState(() {
                      useBiometrics
                          ? useBiometrics = false
                          : useBiometrics = true;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
