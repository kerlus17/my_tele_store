import 'package:flutter/material.dart';
import 'package:tele_store/core/app/env_variables.dart';

class tele_store extends StatelessWidget {
  const tele_store({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tele store',
      debugShowCheckedModeBanner: EnvVariable.instance.debugmode,
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("tele store"),
        ),
      ),
    );
  }
}
