import 'package:flutter/material.dart';

class tele_store extends StatelessWidget {
  const tele_store({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tele store',
      theme: ThemeData(


        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(appBar: AppBar(title: Text("tele store"),),),
    );
  }
}
