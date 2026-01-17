import 'package:flutter/material.dart';

class ProductDetailView extends StatelessWidget {
  const ProductDetailView({
    super.key,
    required this.productId,
    this.productName,
  });

  final String productId;
  final String? productName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade50,
      appBar: AppBar(
        title: const Text('Detail - Slide+Fade'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(32),
              decoration: BoxDecoration(
                color: Colors.indigo.shade100,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.inventory_2, size: 80, color: Colors.indigo),
            ),
            const SizedBox(height: 24),
            Text(
              'Slide + Fade',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Colors.indigo.shade700,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 8),
            Text(
              'Kayma ve solma kombinasyonu',
              style: TextStyle(color: Colors.indigo.shade400, fontSize: 16),
            ),
            const SizedBox(height: 16),
            if (productName != null)
              Text(
                productName!,
                style: TextStyle(color: Colors.indigo.shade600, fontSize: 14),
              ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.arrow_forward, size: 32, color: Colors.indigo),
                SizedBox(width: 8),
                Icon(Icons.blur_on, size: 32, color: Colors.indigo),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
