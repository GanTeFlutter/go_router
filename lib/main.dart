import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_demo/product/navigation/app_router.dart';

Future<void> main() async {
  runApp(_MyApp());
}

class _MyApp extends StatelessWidget {
  _MyApp();

  final _router = GoRouter(routes: $appRoutes, initialLocation: '/');

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(title: 'akillisletme', routerConfig: _router);
  }
}
