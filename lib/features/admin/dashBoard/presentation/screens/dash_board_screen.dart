import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tele_store/core/common/widgets/admin_app_bar.dart';
import 'package:tele_store/core/di/injection_container.dart';
import 'package:tele_store/core/style/colors/colors_dark.dart';
import 'package:tele_store/features/admin/dashBoard/presentation/bloc/Products_number/products_number_bloc.dart';
import 'package:tele_store/features/admin/dashBoard/presentation/bloc/Users_number/users_number_bloc.dart';
import 'package:tele_store/features/admin/dashBoard/presentation/bloc/categories_number/categories_number_bloc.dart';
import 'package:tele_store/features/admin/dashBoard/presentation/refactor/dash_board_body.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<CategoriesNumberBloc>()..add(CategoriesNumberEvent.getCategoriesNumber()),
        ),
        BlocProvider(
          create: (context) => sl<UsersNumberBloc>()..add(UsersNumberEvent.getUsersNumber()),
        ),
        BlocProvider(
          create: (context) => sl<ProductsNumberBloc>()..add(ProductsNumberEvent.getProductsNumber()),
        ),
      ],
      child: const Scaffold(
        backgroundColor: ColorsDark.mainColor,
        appBar: AdminAppBar(
          title: 'DashBoard',
          isMain: true,
          backgroundColor: ColorsDark.mainColor,
        ), // AdminAppBar
        body: DashBoardBody(),
      ),
    );
  }
}
