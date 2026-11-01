import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tele_store/core/app/upload_image/cubit/cubit/upload_image_cubit.dart';
import 'package:tele_store/core/common/screens/underbuild_screen.dart';
import 'package:tele_store/core/di/injection_container.dart';
import 'package:tele_store/core/routes/base_route.dart';
import 'package:tele_store/features/admin/home_admin/presentation/screens/home_admin_screen.dart';
import 'package:tele_store/features/auth/presentation/bloc/bloc/auth_bloc.dart';
import 'package:tele_store/features/auth/presentation/screens/login_screen.dart';
import 'package:tele_store/features/auth/presentation/screens/signup_screen.dart';
import 'package:tele_store/features/customer/category/presentation/screen/category_screen.dart';
import 'package:tele_store/features/customer/main/presentaion/cubit/main_cubit.dart';
import 'package:tele_store/features/customer/main/presentaion/screen/main_screen.dart';
import 'package:tele_store/features/customer/product_details/presentation/screen/product_details_screen.dart';
import 'package:tele_store/features/customer/products_view_all/presentation/screen/products_view_all_screen.dart';
import 'package:tele_store/features/customer/profile/presentation/widgets/custom_web_view.dart';
import 'package:tele_store/features/customer/search/presentation/screen/search_screen.dart';

class AppRoutes {
  static const String login = 'login';
  static const String signup = 'signup';
  static const String homeAdmin = 'HomeAdmin';
  static const String homeCustomer = 'HomeCustomer';
  static const String webView = 'webView';
  static const String Productdetails = 'ProductDetailsScreen';
  static const String category = 'category';
  static const String productsViewAll = 'productsViewAll';
  static const String searchScreen = 'searchScreen';

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
        return BaseRoute(
          page: MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) => sl<UploadImageCubit>()),
              BlocProvider(create: (context) => sl<AuthBloc>()),
            ],
            child: const SignupScreen(),
          ),
        );
      case homeAdmin:
        return BaseRoute(page: const HomeAdmin());
      case category:
        return BaseRoute(
          page: CategoryScreen(
            categoryInfo: args! as ({int categoryId, String categoryName}),
          ),
        );
      case homeCustomer:
        return BaseRoute(
          page: BlocProvider(
            create: (context) => sl<MainCubit>(),
            child: const MainScreen(),
          ),
        );
      case webView:
        return BaseRoute(
          page: CustomWebView(
            url: args! as String,
          ),
        );

      case Productdetails:
        return BaseRoute(
          page: ProductDetailsScreen(
            productId: args! as int,
          ),
        );
      case productsViewAll:
        return BaseRoute(
          page: ProductsViewAllScreen(),
        );
      case searchScreen:
        return BaseRoute(
          page: SearchScreen(),
        );

      default:
        return BaseRoute(page: const PageUnderBuildScreen());
    }
  }
}
