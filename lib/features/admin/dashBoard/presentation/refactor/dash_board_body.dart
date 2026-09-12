import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tele_store/core/common/widgets/custom_text.dart';
import 'package:tele_store/core/extentions/context_extension.dart';
import 'package:tele_store/core/style/images/app_images.dart';
import 'package:tele_store/features/admin/dashBoard/presentation/bloc/Products_number/products_number_bloc.dart';
import 'package:tele_store/features/admin/dashBoard/presentation/bloc/Users_number/users_number_bloc.dart';
import 'package:tele_store/features/admin/dashBoard/presentation/bloc/categories_number/categories_number_bloc.dart';
import 'package:tele_store/features/admin/dashBoard/presentation/widgets/dashBoard_container.dart';

class DashBoardBody extends StatelessWidget {
  const DashBoardBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
      child: RefreshIndicator(
        onRefresh: () async {
          context.read<ProductsNumberBloc>().add(
            const ProductsNumberEvent.getProductsNumber(),
          );
          context.read<CategoriesNumberBloc>().add(
            const CategoriesNumberEvent.getCategoriesNumber(),
          );
          context.read<UsersNumberBloc>().add(
            const UsersNumberEvent.getUsersNumber(),
          );
        },
        child: ListView(
          children: [
            BlocBuilder<ProductsNumberBloc, ProductsNumberState>(
              builder: (context, state) {
                return state.when(
                  loading: () {
                    return const DashBoardContiner(
                      image: AppImages.productsDrawer,
                      number: ' ',
                      title: 'Products',
                      isLoading: true,
                    );
                  },
                  success: (productNumber) {
                    return DashBoardContiner(
                      image: AppImages.productsDrawer,
                      number: productNumber,
                      title: 'Products',
                      isLoading: false,
                    );
                  },
                  error: (errorMessage) {
                    return TextApp(
                      text: errorMessage,
                      theme: context.textStyle.copyWith(
                        color: Colors.red,
                        fontSize: 16.sp,
                      ),
                    );
                  },
                );
              },
            ),
            SizedBox(height: 20.h),

            BlocBuilder<CategoriesNumberBloc, CategoriesNumberState>(
              builder: (context, state) {
                return state.when(
                  loading: () {
                    return const DashBoardContiner(
                      image: AppImages.categoriesDrawer,
                      number: ' ',
                      title: 'categories',
                      isLoading: true,
                    );
                  },
                  success: (number) {
                    return DashBoardContiner(
                      image: AppImages.categoriesDrawer,
                      number: number,
                      title: 'categories',
                      isLoading: false,
                    );
                  },
                  error: (errorMessage) {
                    return TextApp(
                      text: errorMessage,
                      theme: context.textStyle.copyWith(
                        color: Colors.red,
                        fontSize: 16.sp,
                      ),
                    );
                  },
                );
              },
            ),
            SizedBox(height: 20.h),
            BlocBuilder<UsersNumberBloc, UsersNumberState>(
              builder: (context, state) {
                return state.when(
                  loading: () {
                    return const DashBoardContiner(
                      image: AppImages.usersDrawer,
                      number: ' ',
                      title: 'Users',
                      isLoading: true,
                    );
                  },
                  success: (number) {
                    return DashBoardContiner(
                      image: AppImages.usersDrawer,
                      number: number,
                      title: 'Users',
                      isLoading: false,
                    );
                  },
                  error: (errorMessage) {
                    return TextApp(
                      text: errorMessage,
                      theme: context.textStyle.copyWith(
                        color: Colors.red,
                        fontSize: 16.sp,
                      ),
                    );
                  },
                );
              },
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
