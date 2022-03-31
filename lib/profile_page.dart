import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'login_page.dart';

class ProfilePage extends StatelessWidget {
  final String nama;
  final String username;
  final String email;
  final String nomor;
  final String alamat;
  final String nim;
  final String kelas;
  final String tanggallahir;
  final String hobi;
  const ProfilePage({
    Key? key,
    required this.nama,
    required this.username,
    required this.email,
    required this.nomor,
    required this.nim,
    required this.kelas,
    required this.tanggallahir,
    required this.hobi,
    this.alamat = "",
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Page"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 24,
          ),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 12),
                Text(
                  "Profile Data",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 24),
                _image(),
                SizedBox(height: 12),
                Text(
                  nama,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  username,
                  style: TextStyle(
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(height: 24),
                Text(
                  email,
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 16),
                Text(
                  nomor,
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  nim,
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  kelas,
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  tanggallahir,
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  hobi,
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 16),
                Text(
                  alamat,
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 18,),
                Text(
                  "Teknologi yang paling di sukai adalah Android Studio",
                  style: TextStyle(fontSize: 15),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 6,),
                Text(
                  "Android Studio adalah Integrated Development Environment (IDE) resmi untuk pengembangan aplikasi Android, yang didasarkan pada IntelliJ IDEA . Selain sebagai editor kode dan fitur developer IntelliJ yang andal, Android Studio menawarkan banyak fitur yang meningkatkan produktivitas Anda dalam membuat aplikasi Android, seperti:",
                  style: TextStyle(fontSize: 15),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 36),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Kembali'),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 18,
                        ),
                      ),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return LoginPage();
                          }),
                              (route) => false,
                        );
                      },
                      child: Text("Logout"),
                      style: OutlinedButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Colors.red,
                        padding: EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget _image(){
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        width: 300.0,
        child: Image.asset('images/flutter.png')
    );
  }
}