import 'package:flutter/material.dart';

class ColumnPage extends StatelessWidget {
  const ColumnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout Column'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Contoh Layout Column',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Icon(Icons.view_column, size: 72, color: Colors.blue),
            const SizedBox(height: 16),
            const Text(
              'Column menyusun widget dari atas ke bawah secara vertikal.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            Container(
              height: 80,
              alignment: Alignment.center,
              color: Colors.lightBlueAccent,
              child: const Text('Container Biru Muda'),
            ),
            const SizedBox(height: 12),
            Container(
              height: 80,
              alignment: Alignment.center,
              color: Colors.lightGreenAccent,
              child: const Text('Container Hijau Muda'),
            ),
            const SizedBox(height: 12),
            Container(
              height: 80,
              alignment: Alignment.center,
              color: Colors.yellowAccent,
              child: const Text('Container Kuning Muda'),
            ),
          ],
        ),
      ),
    );
  }
}
