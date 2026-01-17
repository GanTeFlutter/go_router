import 'package:flutter/material.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      appBar: AppBar(
        title: const Text('Products - Zoom'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(32),
              decoration: BoxDecoration(
                color: Colors.green.shade100,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.shopping_bag, size: 80, color: Colors.green),
            ),
            const SizedBox(height: 24),
            Text(
              'Zoom Transition',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Colors.green.shade700,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 8),
            Text(
              'Android Q+ tarzı zoom efekti',
              style: TextStyle(color: Colors.green.shade400, fontSize: 16),
            ),
            const SizedBox(height: 32),
            const Icon(Icons.zoom_in, size: 48, color: Colors.green),
          ],
        ),
      ),
    );
  }
}
