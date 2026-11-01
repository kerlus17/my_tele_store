import 'package:app_links/app_links.dart';
import 'package:flutter/material.dart';
import 'package:tele_store/core/di/injection_container.dart';
import 'package:tele_store/core/routes/app_routes.dart';

void initDeepLinks() {
  final appLinks = AppLinks();

  appLinks.uriLinkStream.listen((Uri uri) {
    _handleDeepLink(uri);
  });

  appLinks.getInitialLink().then((Uri? uri) {
    if (uri != null) {
      _handleDeepLink(uri);
    }
  });
}

void _handleDeepLink(Uri uri) {
  if (uri.pathSegments.contains('product')) {
    final String productId = uri.pathSegments.last;

    final context = sl<GlobalKey<NavigatorState>>().currentContext;
    if (context != null) {
      Navigator.pushNamed(
        context,
        AppRoutes.Productdetails,
        arguments: int.parse(
          productId,
        ),
      );
    }
  }
}
