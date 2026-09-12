import 'package:flutter/material.dart';

class LaporanPerformaHal extends StatelessWidget {
  const LaporanPerformaHal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Laporan Performa Anak'),
      ),

      body: const Center(
        child: Text(
          'Test',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}