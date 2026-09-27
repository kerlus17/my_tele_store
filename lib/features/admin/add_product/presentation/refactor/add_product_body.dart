import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tele_store/core/common/loading/empty_screen.dart';
import 'package:tele_store/core/common/loading/loading_shimmer.dart';
import 'package:tele_store/features/admin/add_product/presentation/bloc/get_all_admin_products/get_all_admin_products_bloc.dart';
import 'package:tele_store/features/admin/add_product/presentation/widgets/create/create_product.dart';
import 'package:tele_store/features/admin/add_product/presentation/widgets/product_admin_item.dart';

class AddProductBody extends StatelessWidget {
  const AddProductBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
      child: Column(
        children: [
          CreateProduct(),
          Expanded(
            child: RefreshIndicator(
              onRefresh: () async {
                context.read<GetAllAdminProductsBloc>()
                  ..add(FetchAllAdminProductsEvent(isloading: true));
              },
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: SizedBox(height: 20.h),
                  ),
                  BlocBuilder<GetAllAdminProductsBloc,
                      GetAllAdminProductsState>(
                    builder: (context, state) {
                      return state.when(
                          loading: () {
                            return SliverToBoxAdapter(
                              child: GridView.builder(
                                shrinkWrap: true,
                                padding: EdgeInsets.zero,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: 10,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 8,
                                  mainAxisSpacing: 15,
                                  childAspectRatio: 165 / 250,
                                ),
                                itemBuilder: (context, index) {
                                  return LoadingShimmer();
                                },
                              ),
                            );
                          },
                          success: (success) {
                            return SliverToBoxAdapter(
                              child: GridView.builder(
                                shrinkWrap: true,
                                padding: EdgeInsets.zero,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: success.length,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 8,
                                  mainAxisSpacing: 15,
                                  childAspectRatio: 165 / 250,
                                ),
                                itemBuilder: (context, index) {
                                  return ProductAdminItem(
                                    categoryId: success[index].id??'',
                                    description: success[index].description??"",
                                    imgList: success[index].images??[],
                                    imgUrl: success[index].images!.first,
                                    categoryName:
                                        success[index].category!.name ?? "",
                                    price:
                                        success[index].price!.toString() ?? "0",
                                    title: success[index].title ?? "",
                                    productId: success[index].id??"",
                                  );
                                },
                              ),
                            );
                          },
                          empty: EmptyScreen.new,
                          error: Text.new);
                    },
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(height: 20.h),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
