import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tele_store/core/app/app_cubit/app_cubit.dart';
import 'package:tele_store/core/app/connectivity_controller.dart';
import 'package:tele_store/core/app/env_variables.dart';
import 'package:tele_store/core/common/screens/nonetwork_screen.dart';
import 'package:tele_store/core/di/injection_container.dart';
import 'package:tele_store/core/routes/app_routes.dart';
import 'package:tele_store/core/serves/shared_pref/pref_keys.dart';
import 'package:tele_store/core/serves/shared_pref/shared_pref.dart';
import 'package:tele_store/core/style/theme/app_theme.dart' as theme;
import 'package:tele_store/language/app_localizations_setup.dart';

class tele_store extends StatelessWidget {
  const tele_store({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<AppCubitCubit>()
        ..changeAppThemeMode(
          sharedMode: SharedPref().getBoolean(prefKeys.themeMode),
        )
        ..getSavedLanguage(),
      child: ValueListenableBuilder(
        valueListenable: ConnectivityController.instance.isconnected,
        builder: (_, value, _) {
          if (value) {
            return ScreenUtilInit(
              designSize: const Size(375, 812),
              minTextAdapt: true,
              child: BlocBuilder<AppCubitCubit, AppCubitState>(
                buildWhen: (previous, current) => previous != current,
                builder: (context, state) {
                  final cubit = context.read<AppCubitCubit>();

                  return MaterialApp(
                    title: 'tele store',
                    debugShowCheckedModeBanner: EnvVariable.instance.debugmode,
                    theme: cubit.isDark
                        ? theme.themeDark()
                        : theme.themeLight(),
                    locale: Locale(cubit.currentLangCode),
                    supportedLocales: AppLocalizationsSetup.supportedLocales,
                    localizationsDelegates:
                        AppLocalizationsSetup.localizationsDelegates,
                    localeResolutionCallback:
                        AppLocalizationsSetup.localeResolutionCallback,
                    builder: (context, widget) {
                      return GestureDetector(
                        onTap: () {
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
                        child: Scaffold(
                          body: Builder(
                            builder: (context) {
                              ConnectivityController.instance.init();
                              return widget!;
                            },
                          ),
                        ),
                      );
                    },
                    home: Scaffold(
                      appBar: AppBar(
                        title: const Text('tele store'),
                      ),
                    ),
                    navigatorKey: sl<GlobalKey<NavigatorState>>(),
                    onGenerateRoute: AppRoutes.onGenerateRoute,
                    initialRoute:
                        SharedPref().getString(prefKeys.accessToken) != null
                        ? SharedPref().getString(prefKeys.userRole) == 'admin'
                              ? AppRoutes.homeAdmin
                              : AppRoutes.homeCustomer
                        : AppRoutes.login,
                  );
                },
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
      ),
    );
  }
}
