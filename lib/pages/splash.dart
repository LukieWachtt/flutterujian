import 'package:flutter/material.dart';
import 'package:flutter_ujiann/pages/homepage.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: const Text(
          'Pendaftaran siswa',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 40),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/homepage');
        },
        backgroundColor: Colors.blue,
        child: Text('Next', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
      ),
    );
  }
}
