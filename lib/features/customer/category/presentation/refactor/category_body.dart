import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tele_store/core/common/loading/empty_screen.dart';
import 'package:tele_store/core/common/loading/loading_shimmer.dart';
import 'package:tele_store/core/common/widgets/custom_product_item.dart';
import 'package:tele_store/features/customer/category/presentation/bloc/get_category/get_category_bloc.dart';

class CategoryBody extends StatelessWidget {
  const CategoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
      child: BlocBuilder<GetCategoryBloc, GetCategoryState>(
        builder: (context, state) {
          return state.when(
            loading: () {
              return GridView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                // physics: const NeverScrollableScrollPhysics(),
                itemCount: 8,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 15,
                  childAspectRatio: 165 / 250,
                ),
                itemBuilder: (context, index) {
                  return LoadingShimmer();
                },
              );
            },
            success: (productList) {
              return GridView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                // physics: const NeverScrollableScrollPhysics(),
                itemCount: productList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 15,
                  childAspectRatio: 165 / 250,
                ),
                itemBuilder: (context, index) {
                  return CustomProductItem(
                    price: productList[index].price ?? 0,
                    categoryName: productList[index].category!.name ?? '',
                    title: productList[index].title ?? '',
                    productid: int.parse(productList[index].id ?? '0'),
                    imgUrl: productList[index].images!.first,
                  );
                },
              );
            },
            empty: () {
              return EmptyScreen();
            },
            error: Text.new,
          );
        },
      ),
    );
  }
}
