import 'package:flutter/material.dart';

class Daftar extends StatefulWidget {
  Daftar({super.key});

  @override
  State<Daftar> createState() => _DaftarState();
}

class _DaftarState extends State<Daftar> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
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
              const Text(
                'Masukkan nama',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              TextFormField(
                controller: _controller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Nama kamu'),
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: () {
                    _saveData();
                  },
                  child: const Text(
                    'Tambahkan siswa',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _saveData() async {
    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text('Siswa ditambahkan')));
  }
}
