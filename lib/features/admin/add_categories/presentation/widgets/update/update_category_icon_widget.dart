import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tele_store/core/app/upload_image/cubit/cubit/upload_image_cubit.dart';
import 'package:tele_store/core/common/bottom_sheet/custom_bottom_sheet.dart';
import 'package:tele_store/core/di/injection_container.dart';
import 'package:tele_store/features/admin/add_categories/presentation/bloc/get_all_admin_categories/get_all_admin_categories_bloc.dart';
import 'package:tele_store/features/admin/add_categories/presentation/bloc/update_category/update_category_bloc.dart';
import 'package:tele_store/features/admin/add_categories/presentation/widgets/update/update_category_bottom_sheet.dart';

class update_category_icon_widget extends StatelessWidget {
  const update_category_icon_widget({
    required this.name,
    required this.categoryId,
    required this.image,
    super.key,
  });

  final String image;
  final String name;
  final String categoryId;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        CustomBottomSheet.showModalBottomSheetContainer(
          context: context,
          widget: MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => sl<UpdateCategoryBloc>(),
              ),
              BlocProvider(
                create: (context) => sl<UploadImageCubit>(),
              ),
            ],
            child: UpdateCategoryBottomSheet(
              name: name,
              categoryId: categoryId,
              imgUrl: image,
            ),
          ),
          whenComplete: () {
            context.read<GetAllAdminCategoriesBloc>().add(
              GetAllAdminCategoriesEvent.getAllAdminCategories(
                isloading: false,
              ),
            );
          },
        );
      },
      child: const Icon(
        Icons.edit,
        color: Colors.green,
        size: 25,
      ),
    );
  }
}
