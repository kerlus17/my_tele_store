import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tele_store/core/common/loading/empty_screen.dart';
import 'package:tele_store/core/common/loading/loading_shimmer.dart';
import 'package:tele_store/features/customer/home/presentation/bloc/get_all_categories/get_all_categories_bloc.dart';
import 'package:tele_store/features/customer/home/presentation/bloc/get_bunner/get_bunner_bloc.dart';
import 'package:tele_store/features/customer/home/presentation/widgets/banner/banner_slider.dart';
import 'package:tele_store/features/customer/home/presentation/widgets/categories/categories_list.dart';
import 'package:tele_store/features/customer/home/presentation/widgets/categories/categories_shimmer.dart';

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
        ],
      ),
    );
  }
}
