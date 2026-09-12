import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tele_store/core/common/loading/empty_screen.dart';
import 'package:tele_store/core/common/loading/loading_shimmer.dart';
import 'package:tele_store/core/style/colors/colors_dark.dart';
import 'package:tele_store/features/admin/add_categories/presentation/bloc/get_all_admin_categories/get_all_admin_categories_bloc.dart';
import 'package:tele_store/features/admin/add_categories/presentation/widgets/add_category_item.dart';
import 'package:tele_store/features/admin/add_categories/presentation/widgets/create/create_category.dart';

class AddCategoriesBody extends StatelessWidget {
  const AddCategoriesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
      child: Column(
        children: [
          // Create Category Button
          const CreateCategory(),

          SizedBox(height: 20.h),

          // Category item list
          Expanded(
            child: RefreshIndicator(
              backgroundColor: ColorsDark.blueLight,
              onRefresh: () async {
                context.read<GetAllAdminCategoriesBloc>().add(
                      const GetAllAdminCategoriesEvent.getAllAdminCategories(isloading: true),
                    );
              },
              child: CustomScrollView(
                slivers: [
                  BlocBuilder<GetAllAdminCategoriesBloc,
                      GetAllAdminCategoriesState>(
                    builder: (context, state) {
                      return state.when(
                        error: (errorMsg) {
                          return SliverToBoxAdapter(
                            child: Center(child: Text(errorMsg)),
                          );
                        },
                        empty: () {
                          return const SliverToBoxAdapter(
                            child: EmptyScreen(),
                          );
                        },
                        loading: () {
                          return SliverToBoxAdapter(
                            child: LoadingShimmer(
                              height: 130.h,
                              borderRadius: 15,
                            ),
                          );
                        },
                        success: (result) {
                          return SliverList.separated(
                            itemBuilder: (context, index) {
                              final category = result.categoriesGetAlls[index];
                              return AddCatgeoryItem(
                                name: category.name ?? "",
                                categoryId: category.id?.toString() ?? "",
                                image: category.image ?? "",
                              );
                            },
                            separatorBuilder: (context, index) =>
                                SizedBox(height: 15.h),
                            itemCount: result.categoriesGetAlls.length,
                          );
                        },
                      );
                    },
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