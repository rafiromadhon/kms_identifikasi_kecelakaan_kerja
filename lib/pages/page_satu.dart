import 'package:flutter/material.dart';
import 'package:kms_identifikasi_kecelakaan_kerja/pages/setting_page.dart';

class PageSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Satu"),
        backgroundColor: Colors.lightGreen,
      ),
      drawer: Drawer(
          child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            height: 150,
            color: Colors.lightGreen,
            alignment: Alignment.bottomLeft,
            child: Text(
              "My Menu",
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => PageSatu(),
                ),
              );
            },
            leading: Icon(Icons.home),
            title: Text("Home"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => SettingPage(),
                ),
              );
            },
            leading: Icon(Icons.settings),
            title: Text("Settings"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.info),
            title: Text("About"),
          ),
          Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            height: 300,
            alignment: Alignment.center,
            child: Text("Oleh Rafi Nur Romadhon"),
          )
        ],
      )),
      // body: Center(child: Text("Drawer Rafi Nur Romadhon")),
    );
  }
}
