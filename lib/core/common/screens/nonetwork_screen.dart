import 'package:flutter/material.dart';
import 'package:tele_store/core/style/images/app_images.dart';

class NoNetWorkScreen extends StatelessWidget {
  const NoNetWorkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImages.noNetwork),
              fit: BoxFit.fill
            ), // DecorationImage
          ), // BoxDecoration
        ), // Container
      ), // Scaffold
    ); // SafeArea
  }
}