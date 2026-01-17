import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key, this.query});

  final String? query;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: const Text('Search - Slide Right'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(32),
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.search, size: 80, color: Colors.blue),
            ),
            const SizedBox(height: 24),
            Text(
              'Slide From Right',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Colors.blue.shade700,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 8),
            Text(
              'Sayfa sağdan sola kayar',
              style: TextStyle(color: Colors.blue.shade400, fontSize: 16),
            ),
            if (query != null) ...[
              const SizedBox(height: 16),
              Text(
                'Query: $query',
                style: TextStyle(color: Colors.blue.shade600, fontSize: 14),
              ),
            ],
            const SizedBox(height: 32),
            const Icon(Icons.arrow_back, size: 48, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
