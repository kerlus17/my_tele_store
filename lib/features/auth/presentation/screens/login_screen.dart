import 'package:flutter/material.dart';
import 'package:tele_store/core/extentions/context_extension.dart';
import 'package:tele_store/features/auth/presentation/refactors/auth_custom_painter.dart';
import 'package:tele_store/features/auth/presentation/refactors/login_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(bottom: false, child: LoginBody()),
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
