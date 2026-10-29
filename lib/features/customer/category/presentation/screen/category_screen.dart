import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tele_store/core/common/widgets/custome_app_bar.dart';
import 'package:tele_store/core/di/injection_container.dart';
import 'package:tele_store/features/customer/category/presentation/bloc/get_category/get_category_bloc.dart';
import 'package:tele_store/features/customer/category/presentation/refactor/category_body.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({required this.categoryInfo, super.key});

  final ({String categoryName, int categoryId}) categoryInfo;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<GetCategoryBloc>()
        ..add(
          GetCategoryEvent.fetchProductsCategory(
            categoryId: categoryInfo.categoryId,
          ),
        ),
      child: Scaffold(
        appBar: CustomeAppBar(title: categoryInfo.categoryName),
        body: CategoryBody(),
      ),
    );
  }
}
