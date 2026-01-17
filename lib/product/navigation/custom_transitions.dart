part of 'app_router.dart';

/// ===== SLIDE TRANSITIONS =====
/// Sağdan sola kayarak açılan sayfa geçişi (varsayılan)
/// Soldan sağa kayarak açılan sayfa geçişi
/// Alttan yukarı açılan sayfa geçişi (modal tarzı)
/// Yukarıdan aşağı açılan sayfa geçişi
/// Fade (solma) geçişi
/// Scale (büyüme) geçişi
/// Rotation (dönme) geçişi
/// Slide + Fade kombinasyonu (iOS tarzı)
/// Scale + Fade kombinasyonu (Android Q+ tarzı zoom)
/// Geçiş efekti olmadan anında sayfa değişimi

/// Sağdan sola kayarak açılan sayfa geçişi (varsayılan)
CustomTransitionPage<void> slideFromRight({
  required LocalKey key,
  required Widget child,
  Duration duration = const Duration(milliseconds: 300),
}) {
  return CustomTransitionPage<void>(
    key: key,
    child: child,
    transitionDuration: duration,
    reverseTransitionDuration: duration,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(1, 0),
          end: Offset.zero,
        ).chain(CurveTween(curve: Curves.easeInOut)).animate(animation),
        child: child,
      );
    },
  );
}

/// Soldan sağa kayarak açılan sayfa geçişi
CustomTransitionPage<void> slideFromLeft({
  required LocalKey key,
  required Widget child,
  Duration duration = const Duration(milliseconds: 300),
}) {
  return CustomTransitionPage<void>(
    key: key,
    child: child,
    transitionDuration: duration,
    reverseTransitionDuration: duration,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(-1, 0),
          end: Offset.zero,
        ).chain(CurveTween(curve: Curves.easeInOut)).animate(animation),
        child: child,
      );
    },
  );
}

/// Alttan yukarı açılan sayfa geçişi (modal tarzı)
CustomTransitionPage<void> slideFromBottom({
  required LocalKey key,
  required Widget child,
  Duration duration = const Duration(milliseconds: 300),
}) {
  return CustomTransitionPage<void>(
    key: key,
    child: child,
    transitionDuration: duration,
    reverseTransitionDuration: duration,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(0, 1),
          end: Offset.zero,
        ).chain(CurveTween(curve: Curves.easeOutCubic)).animate(animation),
        child: child,
      );
    },
  );
}

/// Yukarıdan aşağı açılan sayfa geçişi
CustomTransitionPage<void> slideFromTop({
  required LocalKey key,
  required Widget child,
  Duration duration = const Duration(milliseconds: 300),
}) {
  return CustomTransitionPage<void>(
    key: key,
    child: child,
    transitionDuration: duration,
    reverseTransitionDuration: duration,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(0, -1),
          end: Offset.zero,
        ).chain(CurveTween(curve: Curves.easeOutCubic)).animate(animation),
        child: child,
      );
    },
  );
}

/// ===== FADE TRANSITIONS =====
/// Fade (solma) geçişi
CustomTransitionPage<void> fadeTransition({
  required LocalKey key,
  required Widget child,
  Duration duration = const Duration(milliseconds: 300),
}) {
  return CustomTransitionPage<void>(
    key: key,
    child: child,
    transitionDuration: duration,
    reverseTransitionDuration: duration,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(opacity: animation, child: child);
    },
  );
}

/// ===== SCALE TRANSITIONS =====
/// Scale (büyüme) geçişi
CustomTransitionPage<void> scaleTransition({
  required LocalKey key,
  required Widget child,
  Duration duration = const Duration(milliseconds: 300),
}) {
  return CustomTransitionPage<void>(
    key: key,
    child: child,
    transitionDuration: duration,
    reverseTransitionDuration: duration,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return ScaleTransition(
        scale: Tween<double>(
          begin: 0.0,
          end: 1.0,
        ).chain(CurveTween(curve: Curves.easeOutBack)).animate(animation),
        child: child,
      );
    },
  );
}

/// ===== ROTATION TRANSITIONS =====
/// Rotation (dönme) geçişi
CustomTransitionPage<void> rotationTransition({
  required LocalKey key,
  required Widget child,
  Duration duration = const Duration(milliseconds: 400),
}) {
  return CustomTransitionPage<void>(
    key: key,
    child: child,
    transitionDuration: duration,
    reverseTransitionDuration: duration,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return RotationTransition(
        turns: Tween<double>(
          begin: 0.5,
          end: 1.0,
        ).chain(CurveTween(curve: Curves.easeOutBack)).animate(animation),
        child: FadeTransition(opacity: animation, child: child),
      );
    },
  );
}

/// ===== COMBINED TRANSITIONS =====
/// Slide + Fade kombinasyonu (iOS tarzı)
CustomTransitionPage<void> slideAndFade({
  required LocalKey key,
  required Widget child,
  Duration duration = const Duration(milliseconds: 300),
}) {
  return CustomTransitionPage<void>(
    key: key,
    child: child,
    transitionDuration: duration,
    reverseTransitionDuration: duration,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(1, 0),
          end: Offset.zero,
        ).chain(CurveTween(curve: Curves.easeInOut)).animate(animation),
        child: FadeTransition(opacity: animation, child: child),
      );
    },
  );
}

/// Scale + Fade kombinasyonu (Android Q+ tarzı zoom)
CustomTransitionPage<void> zoomTransition({
  required LocalKey key,
  required Widget child,
  Duration duration = const Duration(milliseconds: 300),
}) {
  return CustomTransitionPage<void>(
    key: key,
    child: child,
    transitionDuration: duration,
    reverseTransitionDuration: duration,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return ScaleTransition(
        scale: Tween<double>(
          begin: 0.85,
          end: 1.0,
        ).chain(CurveTween(curve: Curves.easeOut)).animate(animation),
        child: FadeTransition(opacity: animation, child: child),
      );
    },
  );
}

/// ===== NO TRANSITION =====
/// Geçiş efekti olmadan anında sayfa değişimi
CustomTransitionPage<void> noTransition({
  required LocalKey key,
  required Widget child,
}) {
  return CustomTransitionPage<void>(
    key: key,
    child: child,
    transitionDuration: Duration.zero,
    reverseTransitionDuration: Duration.zero,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}

/// ===== LEGACY SUPPORT =====
/// Eski kod uyumluluğu için alias
CustomTransitionPage<void> slideRightTransition({
  required LocalKey key,
  required Widget child,
}) => slideFromRight(key: key, child: child);
