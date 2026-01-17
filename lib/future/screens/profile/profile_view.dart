import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key, required this.userId});

  final String userId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade50,
      appBar: AppBar(
        title: const Text('Profile - Scale'),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(32),
              decoration: BoxDecoration(
                color: Colors.orange.shade100,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.person, size: 80, color: Colors.orange),
            ),
            const SizedBox(height: 24),
            Text(
              'Scale Transition',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Colors.orange.shade700,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 8),
            Text(
              'Sayfa büyüyerek belirir',
              style: TextStyle(color: Colors.orange.shade400, fontSize: 16),
            ),
            const SizedBox(height: 16),
            Text(
              'User ID: $userId',
              style: TextStyle(color: Colors.orange.shade600, fontSize: 14),
            ),
            const SizedBox(height: 32),
            const Icon(Icons.zoom_out_map, size: 48, color: Colors.orange),
          ],
        ),
      ),
    );
  }
}
