import 'package:flutter/material.dart';

class DenemeEkran extends StatelessWidget {
  const DenemeEkran({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade50,
      appBar: AppBar(
        title: const Text('Deneme - Fade'),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(32),
              decoration: BoxDecoration(
                color: Colors.purple.shade100,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.animation,
                size: 80,
                color: Colors.purple,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'Fade Transition',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: Colors.purple.shade700,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Sayfa solarak belirir',
              style: TextStyle(color: Colors.purple.shade400, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
