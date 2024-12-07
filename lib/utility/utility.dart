import 'package:flutter/material.dart';

class Utility {
  ///
  void showError(String msg) {
    ScaffoldMessenger.of(NavigationService.navigatorKey.currentContext!).showSnackBar(
      SnackBar(
        content: Text(msg),
        duration: const Duration(seconds: 5),
      ),
    );
  }

  ///
  String generateWareki({required String wareki}) => wareki.replaceAll('令和', 'R').replaceAll('年', '');
}

class NavigationService {
  const NavigationService._();

  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
}
