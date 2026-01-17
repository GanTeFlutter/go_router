import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade50,
      appBar: AppBar(
        title: const Text('Settings - Slide Bottom'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(32),
              decoration: BoxDecoration(
                color: Colors.teal.shade100,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.settings, size: 80, color: Colors.teal),
            ),
            const SizedBox(height: 24),
            Text(
              'Slide From Bottom',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Colors.teal.shade700,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 8),
            Text(
              'Sayfa alttan yukarı kayar',
              style: TextStyle(color: Colors.teal.shade400, fontSize: 16),
            ),
            const SizedBox(height: 32),
            const Icon(Icons.arrow_upward, size: 48, color: Colors.teal),
          ],
        ),
      ),
    );
  }
}
