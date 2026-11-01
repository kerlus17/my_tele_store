import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tele_store/core/common/widgets/custome_app_bar.dart';
import 'package:tele_store/core/di/injection_container.dart';
import 'package:tele_store/core/extentions/context_extension.dart';
import 'package:tele_store/features/customer/products_view_all/presentation/bloc/products_view_all/products_view_all_bloc.dart';
import 'package:tele_store/features/customer/products_view_all/presentation/bloc/products_view_all/products_view_all_event.dart';
import 'package:tele_store/features/customer/products_view_all/presentation/refactor/products_view_all_body.dart';
import 'package:tele_store/language/lang_keys.dart';

class ProductsViewAllScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          sl<ProductsViewAllBloc>()..add(GetProductsViewAllEvent()),
      child: Scaffold(
        appBar: CustomeAppBar(title: context.translate(LangKeys.view_all)),
        body: ProductsViewAllBody(),
      ),
    );
  }
}
