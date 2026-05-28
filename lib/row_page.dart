import 'package:flutter/material.dart';

class RowPage extends StatelessWidget {
  const RowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout Row'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Contoh Layout Row',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'Row menyusun widget dari kiri ke kanan secara horizontal.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.account_circle, size: 48, color: Colors.blue),
                Icon(Icons.favorite, size: 48, color: Colors.red),
                Icon(Icons.star, size: 48, color: Colors.amber),
                Icon(Icons.send, size: 48, color: Colors.green),
              ],
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 64,
                  height: 64,
                  alignment: Alignment.center,
                  color: Colors.lightBlueAccent,
                  child: const Text('1'),
                ),
                Container(
                  width: 64,
                  height: 64,
                  alignment: Alignment.center,
                  color: Colors.lightGreenAccent,
                  child: const Text('2'),
                ),
                Container(
                  width: 64,
                  height: 64,
                  alignment: Alignment.center,
                  color: Colors.yellowAccent,
                  child: const Text('3'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
