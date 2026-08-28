import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class ConnectivityController {
  ConnectivityController._();
  static final ConnectivityController instance = ConnectivityController._();

  ValueNotifier<bool> isconnected = ValueNotifier(true);

  Future<void> init() async {
    final result = await Connectivity().checkConnectivity();
    isConnectNetwork(result);
    Connectivity().onConnectivityChanged.listen(isConnectNetwork);
  }

  bool isConnectNetwork(List<ConnectivityResult> result) {
    if (result.contains(ConnectivityResult.none)) {
      isconnected.value = false;
      return false;
    } else if (result.contains(ConnectivityResult.mobile) ||
        result.contains(ConnectivityResult.wifi)) {
      isconnected.value = true;

      return true;
    }
    return false;
  }
}
