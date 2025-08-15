import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  Future<T?> goPush<T>(Widget page) {
    return Navigator.push<T>(this, MaterialPageRoute(builder: (_) => page));
  }

  Future<T?> goPushRouteNamed<T>(String routeName) {
    return Navigator.pushNamed<T>(this, routeName);
  }

  Future<T?> goPushReplacementAnimated<T>(Widget page) {
    return Navigator.pushReplacement<T, T>(
      this,
      MaterialPageRoute<T>(builder: (_) => page),
    );
  }

  Future<T?> goPushReplacement<T>(Widget page) {
    return Navigator.pushReplacement<T, T>(
      this,
      PageRouteBuilder<T>(
        transitionDuration: const Duration(milliseconds: 600),
        pageBuilder: (context, animation, secondaryAnimation) => page,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          final scaleAnimation = Tween<double>(
            begin: 0.8,
            end: 1.0,
          ).animate(CurvedAnimation(parent: animation, curve: Curves.easeOut));

          return ScaleTransition(scale: scaleAnimation, child: child);
        },
      ),
    );
  }

  void showSnackBar(String message) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(content: Text(message), duration: const Duration(seconds: 2)),
    );
  }
}
