import 'package:flutter/material.dart';

class HalamanDetail extends StatelessWidget {
  final String judul;
  final String keterangan;

  const HalamanDetail({
    super.key,
    required this.judul,
    required this.keterangan,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(judul),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                judul,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Text(
                keterangan,
                style: const TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Kembali'),
              ),
              const SizedBox(height: 12),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(
                    context,
                    'Data dari halaman detail',
                  );
                },
                child: const Text('Kembali dengan Nilai'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}