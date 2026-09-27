import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tele_store/core/common/widgets/admin_app_bar.dart';
import 'package:tele_store/core/di/injection_container.dart';
import 'package:tele_store/core/style/colors/colors_dark.dart';
import 'package:tele_store/features/admin/add_product/presentation/bloc/delete_product/delete_product_bloc.dart';
import 'package:tele_store/features/admin/add_product/presentation/bloc/get_all_admin_products/get_all_admin_products_bloc.dart';
import 'package:tele_store/features/admin/add_product/presentation/bloc/update_product/update_product_bloc.dart';
import 'package:tele_store/features/admin/add_product/presentation/refactor/add_product_body.dart';

class AddProductScreen extends StatelessWidget {
  const AddProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<GetAllAdminProductsBloc>()
            ..add(GetAllAdminProductsEvent.fetchAllAdminProducts(
                isloading: false)),
        ),
         BlocProvider(
          create: (context) => sl<DeleteProductBloc>()
    
        ),
          
      ],
      child: const Scaffold(
        backgroundColor: ColorsDark.mainColor,
        appBar: AdminAppBar(
          title: 'products',
          isMain: true,
          backgroundColor: ColorsDark.mainColor,
        ), // AdminAppBar
        body: AddProductBody(),
      ),
    );
  }
}
