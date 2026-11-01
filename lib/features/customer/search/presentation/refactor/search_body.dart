import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tele_store/core/common/loading/empty_screen.dart';
import 'package:tele_store/core/common/widgets/custom_product_item.dart';
import 'package:tele_store/core/extentions/context_extension.dart';
import 'package:tele_store/features/customer/search/presentation/bloc/search/search_bloc.dart';
import 'package:tele_store/features/customer/search/presentation/widgets/filter_buttons.dart';
import 'package:tele_store/features/customer/search/presentation/widgets/search_for_data_icon.dart';

class SearchBody extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
      child: Column(
        children: [
          FilterButtons(),
          SizedBox(height: 20.h),
         

          BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              return state.when(
                initial: () {
                  return const SizedBox.shrink();
                },
                error: Text.new,
                empty: () {
                  return EmptyScreen();
                },
                loading: () {
                  return CircularProgressIndicator(
                    color: context.color.textColor,
                  );
                },
                success: (productList) {
                  return Expanded(
                    child: GridView.builder(
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      itemCount: productList.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
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
                          imgUrl: productList[index].images!.first,
                          productid: int.parse(productList[index].id ?? '0'),
                        );
                      },
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
