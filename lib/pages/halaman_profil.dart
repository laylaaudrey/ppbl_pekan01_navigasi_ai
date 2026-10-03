import 'package:flutter/material.dart';

import '../navigation/app_routes.dart';

class HalamanProfil extends StatelessWidget {
  const HalamanProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.person, size: 80),
            const SizedBox(height: 16),
            const Text(
              'Profil Mahasiswa',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Nama: Mahasiswa Kampus',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.catatan);
              },
              child: const Text('Buka Halaman Catatan'),
            ),
          ],
        ),
      ),
    );
  }
}
