import 'package:flutter/material.dart';
import '../pages/halaman_detail.dart';
import '../pages/halaman_pengaturan.dart';
import 'kerangka_navigasi.dart';
import '../pages/halaman_catatan.dart';

class AppRoutes {
  static const String beranda = '/';
  static const String detail = '/detail';
  static const String pengaturan = '/pengaturan';
  static const String catatan = '/catatan';

  static Map<String, WidgetBuilder> daftarRoute() {
    return {
      beranda: (context) => const KerangkaNavigasi(),
      pengaturan: (context) => const HalamanPengaturan(),
      catatan: (context) => const HalamanCatatan(),
    };
  }

  static Route<dynamic> bentukRoute(RouteSettings settings) {
    if (settings.name == detail) {
      final arguments = settings.arguments;

      if (arguments is Map<String, String>) {
        final String judul = arguments['judul'] ?? 'Detail';
        final String keterangan =
            arguments['keterangan'] ?? 'Tidak ada keterangan.';

        return MaterialPageRoute(
          builder: (context) => HalamanDetail(
            judul: judul,
            keterangan: keterangan,
          ),
          settings: settings,
        );
      }

      return MaterialPageRoute(
        builder: (context) => const HalamanDetail(
          judul: 'Detail',
          keterangan: 'Data detail tidak tersedia.',
        ),
        settings: settings,
      );
    }

    return routeTidakDikenal();
  }

  static Route<dynamic> routeTidakDikenal() {
    return MaterialPageRoute(
      builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Route Tidak Ditemukan'),
          ),
          body: const Center(
            child: Text(
              'Halaman yang diminta tidak ditemukan.',
              style: TextStyle(
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        );
      },
    );
  }
}