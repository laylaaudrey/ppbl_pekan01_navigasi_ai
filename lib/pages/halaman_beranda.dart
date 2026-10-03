import 'package:flutter/material.dart';
import '../navigation/app_routes.dart';

class HalamanBeranda extends StatefulWidget {
  const HalamanBeranda({super.key});

  @override
  State<HalamanBeranda> createState() => _HalamanBerandaState();
}

class _HalamanBerandaState extends State<HalamanBeranda> {
  String _pesan = 'Belum ada data yang dikirim balik.';

  Future<void> _bukaDetail() async {
    final String? hasil = await Navigator.pushNamed<String>(
      context,
      AppRoutes.detail,
      arguments: {
        'judul': 'Detail Mata Kuliah',
        'keterangan':
            'Pemrograman Perangkat Bergerak Lanjut merupakan mata kuliah yang mempelajari pengembangan aplikasi perangkat bergerak menggunakan Flutter.',
      },
    );

    if (!mounted) {
      return;
    }

    setState(() {
      _pesan = hasil ?? 'Tidak ada data yang dikirim balik.';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.home,
              size: 80,
            ),
            const SizedBox(height: 16),
            const Text(
              'Halaman Beranda',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            Text(
              _pesan,
              style: const TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: _bukaDetail,
              child: const Text('Buka Halaman Detail'),
            ),
          ],
        ),
      ),
    );
  }
}