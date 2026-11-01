import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tele_store/core/common/widgets/custom_product_item.dart';
import 'package:tele_store/core/extentions/context_extension.dart';
import 'package:tele_store/core/extentions/string_extension.dart';
import 'package:tele_store/features/customer/products_view_all/presentation/bloc/products_view_all/products_view_all_bloc.dart';
import 'package:tele_store/features/customer/products_view_all/presentation/bloc/products_view_all/products_view_all_state.dart';

class ProductsViewAllBody extends StatefulWidget {
  const new({super.key});

  @override
  State<ProductsViewAllBody> createState() => _ProductsViewAllBodyState();
}

late final ScrollController _scrollController;

class _ProductsViewAllBodyState extends State<ProductsViewAllBody> {
  @override
  void initState() {
    super.initState();

    _scrollController = ScrollController()
      ..addListener(() {
        context.read<ProductsViewAllBloc>().handlerPagenation(
          scrollController: _scrollController,
          loadingMorePosition: MediaQuery.of(context).size.height * 0.15,
        );
      });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
      child: BlocBuilder<ProductsViewAllBloc, ProductsViewAllState>(
        builder: (context, state) {
          if (state is ProductsViewAllLoadingState &&
              state.productsList.isEmpty) {
            return Center(
              child: CircularProgressIndicator(
                color: context.color.textColor,
              ),
            );
          } else if (state is ProductsViewAllErrorState) {
            return Center(
              child: Text(state.error),
            );
          } else {
            return Column(
              children: [
                Expanded(
                  child: GridView.builder(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    controller: _scrollController,
                    itemCount: state.productsList.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 15,
                          childAspectRatio: 165 / 250,
                        ),
                    itemBuilder: (context, index) {
                      final product = state.productsList[index];

                      final rawImageUrl =
                          (product.images != null && product.images!.isNotEmpty)
                          ? product.images!.first
                          : '';

                      return CustomProductItem(
                        key: ValueKey(
                          product.id ?? index,
                        ), 
                        price: product.price ?? 0,
                        categoryName: product.category?.name ?? '',
                        title: product.title ?? '',
                        productid: int.parse(product.id ?? '0'),
                        imgUrl: rawImageUrl.imageProductFormate(), 
                      );
                    },
                  ),
                ),

                if (state is ProductsViewAllLoadingState &&
                    state.productsList.isNotEmpty)
                  Center(
                    child: CircularProgressIndicator(
                      color: context.color.textColor,
                    ),
                  ),
              ],
            );
          }
        },
      ),
    );
  }
}
