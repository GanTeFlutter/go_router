// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$homeRoute];

RouteBase get $homeRoute => GoRouteData.$route(
  path: '/',
  factory: $HomeRoute._fromState,
  routes: [
    GoRouteData.$route(
      path: 'settings',
      name: 'Settings',
      factory: $SettingsRoute._fromState,
    ),
    GoRouteData.$route(
      path: 'profile/:userId',
      name: 'Profile',
      factory: $ProfileRoute._fromState,
    ),
    GoRouteData.$route(
      path: 'products',
      name: 'Products',
      factory: $ProductsRoute._fromState,
    ),
    GoRouteData.$route(
      path: 'product/:productId',
      name: 'Product Detail',
      factory: $ProductDetailRoute._fromState,
    ),
    GoRouteData.$route(
      path: 'notifications',
      name: 'Notifications',
      factory: $NotificationsRoute._fromState,
    ),
    GoRouteData.$route(
      path: 'search',
      name: 'Search',
      factory: $SearchRoute._fromState,
    ),
    GoRouteData.$route(
      path: 'deneme',
      name: 'Deneme',
      factory: $DenemeRoute._fromState,
    ),
  ],
);

mixin $HomeRoute on GoRouteData {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  @override
  String get location => GoRouteData.$location('/');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $SettingsRoute on GoRouteData {
  static SettingsRoute _fromState(GoRouterState state) => const SettingsRoute();

  @override
  String get location => GoRouteData.$location('/settings');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $ProfileRoute on GoRouteData {
  static ProfileRoute _fromState(GoRouterState state) =>
      ProfileRoute(userId: state.pathParameters['userId']!);

  ProfileRoute get _self => this as ProfileRoute;

  @override
  String get location =>
      GoRouteData.$location('/profile/${Uri.encodeComponent(_self.userId)}');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $ProductsRoute on GoRouteData {
  static ProductsRoute _fromState(GoRouterState state) => const ProductsRoute();

  @override
  String get location => GoRouteData.$location('/products');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $ProductDetailRoute on GoRouteData {
  static ProductDetailRoute _fromState(GoRouterState state) =>
      ProductDetailRoute(
        productId: state.pathParameters['productId']!,
        productName: state.uri.queryParameters['product-name'],
      );

  ProductDetailRoute get _self => this as ProductDetailRoute;

  @override
  String get location => GoRouteData.$location(
    '/product/${Uri.encodeComponent(_self.productId)}',
    queryParams: {
      if (_self.productName != null) 'product-name': _self.productName,
    },
  );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $NotificationsRoute on GoRouteData {
  static NotificationsRoute _fromState(GoRouterState state) =>
      const NotificationsRoute();

  @override
  String get location => GoRouteData.$location('/notifications');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $SearchRoute on GoRouteData {
  static SearchRoute _fromState(GoRouterState state) =>
      SearchRoute(query: state.uri.queryParameters['query']);

  SearchRoute get _self => this as SearchRoute;

  @override
  String get location => GoRouteData.$location(
    '/search',
    queryParams: {if (_self.query != null) 'query': _self.query},
  );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $DenemeRoute on GoRouteData {
  static DenemeRoute _fromState(GoRouterState state) => const DenemeRoute();

  @override
  String get location => GoRouteData.$location('/deneme');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}
