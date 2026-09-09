import 'package:flutter/material.dart';
import 'package:tele_store/core/common/widgets/admin_app_bar.dart';
import 'package:tele_store/core/style/colors/colors_dark.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
      backgroundColor: ColorsDark.mainColor,
      appBar: AdminAppBar(
        title: 'DashBoard',
        isMain: true,
        backgroundColor: ColorsDark.mainColor,
      ), // AdminAppBar
      body: Center(
        child: Text(
          'DashBoard Screen',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ), 
      ), 
    ); 
  }
}
