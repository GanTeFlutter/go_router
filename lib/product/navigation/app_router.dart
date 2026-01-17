import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_demo/future/screens/deneme/deneme_ekran.dart';
import 'package:go_router_demo/future/home/home_view.dart';
import 'package:go_router_demo/future/screens/notifications/notifications_view.dart';
import 'package:go_router_demo/future/screens/products/product_detail_view.dart';
import 'package:go_router_demo/future/screens/products/products_view.dart';
import 'package:go_router_demo/future/screens/profile/profile_view.dart';
import 'package:go_router_demo/future/screens/search/search_view.dart';
import 'package:go_router_demo/future/screens/settings/settings_view.dart';

part 'app_router.g.dart';
part 'custom_transitions.dart';

/// ===== ANA ROUTE =====
/// Tüm alt route'lar burada listelenir
@TypedGoRoute<HomeRoute>(
  path: '/',
  routes: [
    SettingsRoute.route,
    ProfileRoute.route,
    ProductsRoute.route,
    ProductDetailRoute.route,
    NotificationsRoute.route,
    SearchRoute.route,
    DenemeRoute.route,
  ],
)
class HomeRoute extends GoRouteData with $HomeRoute {
  const HomeRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return slideRightTransition(key: state.pageKey, child: const HomeView());
  }
}

/// ===== ALT ROUTE'LAR =====

class DenemeRoute extends GoRouteData with $DenemeRoute {
  const DenemeRoute();

  static const route = TypedGoRoute<DenemeRoute>(
    path: 'deneme',
    name: 'Deneme',
  );

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return fadeTransition(key: state.pageKey, child: const DenemeEkran());
  }
}

/// Settings - Basit route (parametre yok)
class SettingsRoute extends GoRouteData with $SettingsRoute {
  const SettingsRoute();

  static const route = TypedGoRoute<SettingsRoute>(
    path: 'settings',
    name: 'Settings',
  );

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return slideFromBottom(key: state.pageKey, child: const SettingsView());
  }
}

/// Profile - Path parametreli route (:userId)
/// URL: /profile/123
class ProfileRoute extends GoRouteData with $ProfileRoute {
  const ProfileRoute({required this.userId});

  final String userId;

  static const route = TypedGoRoute<ProfileRoute>(
    path: 'profile/:userId',
    name: 'Profile',
  );

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return scaleTransition(
      key: state.pageKey,
      child: ProfileView(userId: userId),
    );
  }
}

/// Products - Basit route
class ProductsRoute extends GoRouteData with $ProductsRoute {
  const ProductsRoute();

  static const route = TypedGoRoute<ProductsRoute>(
    path: 'products',
    name: 'Products',
  );

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return zoomTransition(key: state.pageKey, child: const ProductsView());
  }
}

/// ProductDetail - Path + Query parametreli route
/// URL: /product/456?productName=iPhone
class ProductDetailRoute extends GoRouteData with $ProductDetailRoute {
  const ProductDetailRoute({required this.productId, this.productName});

  final String productId;
  final String? productName; // Query param (opsiyonel)

  static const route = TypedGoRoute<ProductDetailRoute>(
    path: 'product/:productId',
    name: 'Product Detail',
  );

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return slideAndFade(
      key: state.pageKey,
      child: ProductDetailView(productId: productId, productName: productName),
    );
  }
}

/// Notifications - Basit route
class NotificationsRoute extends GoRouteData with $NotificationsRoute {
  const NotificationsRoute();

  static const route = TypedGoRoute<NotificationsRoute>(
    path: 'notifications',
    name: 'Notifications',
  );

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return rotationTransition(
      key: state.pageKey,
      child: const NotificationsView(),
    );
  }
}

/// Search - Query parametreli route
/// URL: /search?query=phone
class SearchRoute extends GoRouteData with $SearchRoute {
  const SearchRoute({this.query});

  final String? query;

  static const route = TypedGoRoute<SearchRoute>(
    path: 'search',
    name: 'Search',
  );

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return slideFromRight(
      key: state.pageKey,
      child: SearchView(query: query),
    );
  }
}
