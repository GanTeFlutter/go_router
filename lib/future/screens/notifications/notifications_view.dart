import 'package:flutter/material.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade50,
      appBar: AppBar(
        title: const Text('Notifications - Rotation'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(32),
              decoration: BoxDecoration(
                color: Colors.red.shade100,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.notifications_active, size: 80, color: Colors.red),
            ),
            const SizedBox(height: 24),
            Text(
              'Rotation Transition',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Colors.red.shade700,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 8),
            Text(
              'Sayfa dönerek belirir',
              style: TextStyle(color: Colors.red.shade400, fontSize: 16),
            ),
            const SizedBox(height: 32),
            const Icon(Icons.rotate_right, size: 48, color: Colors.red),
          ],
        ),
      ),
    );
  }
}
