import 'package:flutter/material.dart';
import 'homepage.dart';
import 'dart:ui'; // Wajib di-import untuk PointerDeviceKind

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Hapus kata 'const' di sini agar tidak error
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
      // Tambahkan ini agar bisa scroll pakai mouse/trackpad di emulator
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.touch,
          PointerDeviceKind.mouse,
          PointerDeviceKind.trackpad,
        },
      ),
      home: const Homepage(),
    );
  }
}
