import 'package:flutter/material.dart';
import 'package:tele_store/core/extentions/context_extension.dart';
import 'package:tele_store/features/auth/presentation/refactors/auth_custom_painter.dart';
import 'package:tele_store/features/auth/presentation/refactors/signup_body.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(bottom: false, child: SignupBody()),
      bottomNavigationBar: CustomPaint(
        size: const Size(double.infinity, 100),
        painter: AuthCustomPainter(
          gradient: LinearGradient(
            colors: [
              context.color.bluePinkLight!,
              context.color.bluePinkLight!,
              context.color.bluePinkLight!,
              context.color.bluePinkDark!,
            ],
          ),
        ),
      ),
    );
  }
}
