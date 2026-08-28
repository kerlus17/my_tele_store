import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:tele_store/core/app/connectivity_controller.dart';
import 'package:tele_store/core/app/env_variables.dart';
import 'package:tele_store/core/common/screens/nonetwork_screen.dart';

class tele_store extends StatelessWidget {
  const tele_store({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isconnected,
      builder: (_, value, _) {
        if (value) {
          return MaterialApp(
            title: 'tele store',
            debugShowCheckedModeBanner: EnvVariable.instance.debugmode,
            theme: ThemeData(
              colorScheme: .fromSeed(seedColor: Colors.deepPurple),
            ),
            builder: (context, Widget) {
              return Scaffold(
                body: Builder(
                  builder: (context) {
                    ConnectivityController.instance.init();
                    return Widget! ;
                  },
                ),
              );
            },
            home: Scaffold(
              appBar: AppBar(
                title: Text("tele store"),
              ),
            ),
          );
        } else {
          return MaterialApp(
            title: 'No NetWork ',
            debugShowCheckedModeBanner: EnvVariable.instance.debugmode,
            home: const NoNetWorkScreen(),
          ); // MaterialApp
        }
      },
    );
  }
}
