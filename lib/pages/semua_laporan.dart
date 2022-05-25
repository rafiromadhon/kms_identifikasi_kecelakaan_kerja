// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:kms_identifikasi_kecelakaan_kerja/main.dart';
import 'package:kms_identifikasi_kecelakaan_kerja/pages/buat_laporan.dart';
import 'package:kms_identifikasi_kecelakaan_kerja/pages/laporan_saya.dart';
import 'package:kms_identifikasi_kecelakaan_kerja/pages/page_satu.dart';
import 'package:kms_identifikasi_kecelakaan_kerja/pages/profil_saya.dart';
import 'package:kms_identifikasi_kecelakaan_kerja/pages/setting_page.dart';
import 'package:kms_identifikasi_kecelakaan_kerja/pages/tentang.dart';

class SemuaLaporan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Semua Laporan"),
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
                  builder: (context) => MyHomePage(),
                ),
              );
            },
            leading: Icon(Icons.home),
            title: Text("Beranda"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => BuatLaporan(),
                ),
              );
            },
            leading: Icon(Icons.settings),
            title: Text("Buat Laporan"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => LaporanSaya(),
                ),
              );
            },
            leading: Icon(Icons.settings),
            title: Text("Laporan Saya"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => SemuaLaporan(),
                ),
              );
            },
            leading: Icon(Icons.settings),
            title: Text("Semua Laporan"),
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
            title: Text("Pengaturan"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => Tentang(),
                ),
              );
            },
            leading: Icon(Icons.settings),
            title: Text("Tentang"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => ProfilSaya(),
                ),
              );
            },
            leading: Icon(Icons.settings),
            title: Text("Profil Saya"),
          ),
          Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            height: 100,
            alignment: Alignment.center,
            child: Text("Oleh Rafi Nur Romadhon"),
          )
        ],
      )),
      body: Center(
          child: Text(
        "Ini page Semua Laporan",
        style: TextStyle(fontSize: 24),
      )),
    );
  }
}
