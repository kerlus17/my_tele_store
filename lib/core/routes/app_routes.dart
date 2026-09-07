import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tele_store/core/common/screens/underbuild_screen.dart';
import 'package:tele_store/core/di/injection_container.dart';
import 'package:tele_store/core/routes/base_route.dart';
import 'package:tele_store/features/admin/home_admin.dart';
import 'package:tele_store/features/auth/presentation/bloc/bloc/auth_bloc.dart';
import 'package:tele_store/features/auth/presentation/screens/login_screen.dart';
import 'package:tele_store/features/auth/presentation/screens/signup_screen.dart';
import 'package:tele_store/features/customer/home_customer.dart';

class AppRoutes {
  static const String login = 'login';
  static const String signup = 'signup';
  static const String homeAdmin = 'HomeAdmin';
  static const String homeCustomer = 'HomeCustomer';

  static Route<void> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case login:
        return BaseRoute(
          page: BlocProvider(
            create: (context) => sl<AuthBloc>(),
            child: const LoginScreen(),
          ),
        );
      case signup:
        return BaseRoute(page: const SignupScreen());
      case homeAdmin:
        return BaseRoute(page: const HomeAdmin());
      case homeCustomer:
        return BaseRoute(page: const HomeCustomer());


      default:
        return BaseRoute(page: const PageUnderBuildScreen());
    }
  }
}
