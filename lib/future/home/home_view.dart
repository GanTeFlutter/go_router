import 'package:flutter/material.dart';
import 'package:go_router_demo/product/navigation/app_router.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Sayfalar Arası Geçiş Efektleri Demo',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 12,
            children: [
              // Fade Transition
              ElevatedButton(
                onPressed: () => const DenemeRoute().go(context),
                child: const Text('Deneme (Fade)'),
              ),
              // Slide from Bottom
              ElevatedButton(
                onPressed: () => const SettingsRoute().go(context),
                child: const Text('Settings (Slide Bottom)'),
              ),
              // Scale Transition
              ElevatedButton(
                onPressed: () => const ProfileRoute(userId: '123').go(context),
                child: const Text('Profile (Scale)'),
              ),
              // Zoom Transition
              ElevatedButton(
                onPressed: () => const ProductsRoute().go(context),
                child: const Text('Products (Zoom)'),
              ),
              // Slide + Fade
              ElevatedButton(
                onPressed: () => const ProductDetailRoute(
                  productId: '456',
                  productName: 'iPhone',
                ).go(context),
                child: const Text('Product Detail (Slide+Fade)'),
              ),
              // Rotation Transition
              ElevatedButton(
                onPressed: () => const NotificationsRoute().go(context),
                child: const Text('Notifications (Rotation)'),
              ),
              // Slide from Right
              ElevatedButton(
                onPressed: () =>
                    const SearchRoute(query: 'flutter').go(context),
                child: const Text('Search (Slide Right)'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
