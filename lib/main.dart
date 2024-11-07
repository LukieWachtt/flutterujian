import 'package:flutter/material.dart';
import 'package:flutter_ujiann/pages/daftar.dart';
import 'package:flutter_ujiann/pages/daftarsiswa.dart';
import 'package:flutter_ujiann/pages/homepage.dart';
import 'package:flutter_ujiann/pages/splash.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/' : (context) => const SplashScreen(),
        '/homepage' : (context) => const HomePage(),
        '/daftar': (context) =>  Daftar(),
        '/daftarsiswa': (context) => const Daftarsiswa()
      },
    );
  }
}
