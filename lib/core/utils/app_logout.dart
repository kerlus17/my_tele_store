import 'package:flutter/material.dart';
import 'package:hive_ce/hive_ce.dart';
import 'package:tele_store/core/di/injection_container.dart';
import 'package:tele_store/core/extentions/context_extension.dart';
import 'package:tele_store/core/routes/app_routes.dart';
import 'package:tele_store/core/serves/hive/hive_database.dart';
import 'package:tele_store/core/serves/shared_pref/pref_keys.dart';
import 'package:tele_store/core/serves/shared_pref/shared_pref.dart';

class AppLogout {
  factory AppLogout() {
    return _instance;
  }

  AppLogout._();

  static final AppLogout _instance = AppLogout._();

  Future<void> logout() async {
    final context = sl<GlobalKey<NavigatorState>>().currentState!.context;
    await SharedPref().removePreference(prefKeys.accessToken);
    await SharedPref().removePreference(prefKeys.userId);
    await SharedPref().removePreference(prefKeys.userRole);
    await HiveDatabase().clearAllBoxes();

    if (!context.mounted) {
      return;
    }
    await context.pushNamedAndRemoveUntil(
      AppRoutes.login,
    );
  }
}
