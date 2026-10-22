import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tele_store/core/common/loading/empty_screen.dart';
import 'package:tele_store/core/common/loading/loading_shimmer.dart';
import 'package:tele_store/core/common/widgets/custom_button.dart';
import 'package:tele_store/core/extentions/context_extension.dart';
import 'package:tele_store/features/customer/home/presentation/bloc/get_all_categories/get_all_categories_bloc.dart';
import 'package:tele_store/features/customer/home/presentation/bloc/get_all_products/get_all_products_bloc.dart';
import 'package:tele_store/features/customer/home/presentation/bloc/get_bunner/get_bunner_bloc.dart';
import 'package:tele_store/features/customer/home/presentation/widgets/banner/banner_slider.dart';
import 'package:tele_store/features/customer/home/presentation/widgets/categories/categories_list.dart';
import 'package:tele_store/features/customer/home/presentation/widgets/categories/categories_shimmer.dart';
import 'package:tele_store/features/customer/home/presentation/widgets/products/products_list.dart';
import 'package:tele_store/language/lang_keys.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({required this.scrollController, super.key});

  final ScrollController scrollController;
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        context.read<GetBunnerBloc>().add(GetBunnerEvent.fetchBunner());
        context.read<GetAllCategoriesBloc>().add(
          GetAllCategoriesEvent.fetchCategories(),
        );
      },
      child: CustomScrollView(
        controller: scrollController,
        slivers: [
          SliverToBoxAdapter(
            child: BlocBuilder<GetBunnerBloc, GetBunnerState>(
              builder: (context, state) {
                return state.when(
                  loading: () {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      child: LoadingShimmer(
                        height: 160.h,
                        width: MediaQuery.of(context).size.width,
                      ),
                    );
                  },
                  success: (bannerList) {
                    return BannerSlider(
                      imglist: bannerList,
                    );
                  },
                  empty: () {
                    return const SizedBox.shrink();
                  },
                  error: (error) {
                    return Text(error);
                  },
                );
              },
            ),
          ),
          SliverToBoxAdapter(
            child: BlocBuilder<GetAllCategoriesBloc, GetAllCategoriesState>(
              builder: (context, state) {
                return state.when(
                  loading: () {
                    return CategoriesShimmer();
                  },
                  success: (success) {
                    return CategoriesList(
                      categoryList: success,
                    );
                  },
                  empty: () {
                    return EmptyScreen();
                  },
                  error: Text.new,
                );
              },
            ),
          ),
          SliverToBoxAdapter(
            child: BlocBuilder<GetAllProductsBloc, GetAllProductsState>(
              builder: (context, state) {
                return state.when(
                  loading: () {
                    return CategoriesShimmer();
                  },
                  success: (success) {
                    return ProductsList(
                      products: success,
                    );
                  },
                  empty: () {
                    return SizedBox.shrink();
                  },
                  error: Text.new,
                );
              },
            ),
          ),
          SizedBox(
            height: 20.h,
          ),

          BlocBuilder<GetAllProductsBloc, GetAllProductsState>(
            builder: (context, state) {
              if (context.read<GetAllProductsBloc>().isProductsLessThan10) {
                return SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: CustomButton(
                      height: 50.h,
                      lastRadius: 10,
                      threeRadius: 10,
                      textColor: Colors.black,
                      width: MediaQuery.of(context).size.width,
                      backgroundColor: context.color.bluePinkDark,
                      text: context.translate(LangKeys.view_all),
                      onPressed: () {},
                    ),
                  ),
                );
              } else {
                return SizedBox.shrink();
              }
            },
          ),
        ],
      ),
    );
  }
}
