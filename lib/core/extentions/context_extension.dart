import 'package:flutter/material.dart';
import 'package:tele_store/core/style/theme/color_extention.dart';
import 'package:tele_store/language/app_localizations.dart';

extension ContextExt on BuildContext {
  // color
  MyColors get color => Theme.of(this).extension<MyColors>()!;

  Future<dynamic> pushName(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(
      this,
    ).pushReplacementNamed(routeName, arguments: arguments);
  }

  // style
TextStyle get textStyle => Theme.of(this).textTheme.displaySmall!;

  String translate(String key) {
    return AppLocalizations.of(this)!.translate(key).toString();
  }

  Future<dynamic> pushNamedAndRemoveUntil(
    String routeName, {
    Object? arguments,
  }) {
    return Navigator.of(this).pushNamedAndRemoveUntil(
      routeName,
      (route) => false,
      arguments: arguments,
    );
  }

  void pop() => Navigator.of(this).pop();
}
