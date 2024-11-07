import 'package:flutter/material.dart';

class Daftar extends StatelessWidget {
   Daftar({super.key});

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Daftarkan dirimu',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Masukkan nama'),
              TextFormField(
                controller: _controller,
                decoration: const InputDecoration(border: OutlineInputBorder(), ),
              )
            ],
          ),
        ),
      ),
    );
  }
}