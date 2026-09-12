import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tele_store/core/common/toast/show_toast.dart';
import 'package:tele_store/core/style/colors/colors_dark.dart';
import 'package:tele_store/features/admin/add_categories/presentation/bloc/delete_category/delete_category_bloc.dart';
import 'package:tele_store/features/admin/add_categories/presentation/bloc/get_all_admin_categories/get_all_admin_categories_bloc.dart';

class delete_category_icon_widget extends StatelessWidget {
  const delete_category_icon_widget({
    required this.CategoryId,
    super.key,
  });

  final String CategoryId;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DeleteCategoryBloc, DeleteCategoryState>(
      listener: (context, state) {
        state.whenOrNull(
          success: () {
            context.read<GetAllAdminCategoriesBloc>().add(
              const GetAllAdminCategoriesEvent.getAllAdminCategories(
                isloading: false,
              ),
            );
            ShowToast.showToastSuccessTop(
              context: context,
              message: 'Your category has been deleted',
            );
          },
          error: (errorMessage) {
            ShowToast.showToastErrorTop(
              context: context,
              message: errorMessage,
            );
          },
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          loading: (categoryID) {
            if (categoryID == CategoryId) {
              return SizedBox(
                height: 15.h,
                width: 15.h,
                child: const CircularProgressIndicator(
                  color: ColorsDark.white,
                ),
              );
            } else {
              return InkWell(
                onTap: () {
                  context.read<DeleteCategoryBloc>().add(
                    DeleteCategoryEvent.removeCategory(CategoryId: CategoryId),
                  );
                },
                child: const Icon(
                  Icons.delete,
                  color: Colors.red,
                  size: 25,
                ),
              );
            }
          },

          orElse: () {
            return InkWell(
              onTap: () {
                context.read<DeleteCategoryBloc>().add(
                  DeleteCategoryEvent.removeCategory(CategoryId: CategoryId),
                );
              },
              child: const Icon(
                Icons.delete,
                color: Colors.red,
                size: 25,
              ),
            );
          },
        );
      },
    );
  }
}
