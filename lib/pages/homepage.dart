import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pendaftaran Siswa',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Daftarkan diri anda di sekolah ADN Boarding School',
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/daftar');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, fixedSize: Size(200, 30)),
                child: Text(
                  'Daftar',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/daftarsiswa');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, fixedSize: Size(200, 30)),
                child: Text(
                  'Nama Daftar Siswa',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
          ],
        ),
      ),
    );
  }
}
