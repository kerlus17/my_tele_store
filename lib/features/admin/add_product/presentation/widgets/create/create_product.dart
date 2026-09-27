import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tele_store/core/app/upload_image/cubit/cubit/upload_image_cubit.dart';
import 'package:tele_store/core/common/bottom_sheet/custom_bottom_sheet.dart';
import 'package:tele_store/core/common/widgets/custom_button.dart';
import 'package:tele_store/core/common/widgets/custom_text.dart';
import 'package:tele_store/core/di/injection_container.dart';
import 'package:tele_store/core/extentions/context_extension.dart';
import 'package:tele_store/core/style/colors/colors_dark.dart';
import 'package:tele_store/core/style/fonts/font_family_helper.dart';
import 'package:tele_store/core/style/fonts/font_weight_helper.dart';
import 'package:tele_store/features/admin/add_categories/presentation/bloc/get_all_admin_categories/get_all_admin_categories_bloc.dart';
import 'package:tele_store/features/admin/add_product/presentation/bloc/create_product/create_product_bloc.dart';
import 'package:tele_store/features/admin/add_product/presentation/bloc/get_all_admin_products/get_all_admin_products_bloc.dart';
import 'package:tele_store/features/admin/add_product/presentation/widgets/create/create_product_bottom_sheet.dart';

class CreateProduct extends StatelessWidget {
  const CreateProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextApp(
          text: 'Get All Product',
          theme: context.textStyle.copyWith(
            fontSize: 18.sp,
            fontWeight: FontWeightHelper.medium,
            fontFamily: FontFamilyHelper.poppinsEnglish,
          ),
        ),
        CustomButton(
          onPressed: () {
            CustomBottomSheet.showModalBottomSheetContainer(
              context: context,
              widget: MultiBlocProvider(
                providers: [
                  BlocProvider(
                    create: (context) => sl<CreateProductBloc>(),
                  ),
                  BlocProvider(
                    create: (context) => sl<UploadImageCubit>(),
                  ),
                  BlocProvider(
                    create: (context) => sl<GetAllAdminCategoriesBloc>()
                      ..add(GetAllAdminCategoriesEvent.getAllAdminCategories(
                          isloading: true)),
                  ),
                ],
                child: CreateProductBottomSheet(),
              ),
              whenComplete: () {
                context.read<GetAllAdminProductsBloc>().add(
                GetAllAdminProductsEvent.fetchAllAdminProducts(isloading: false));
              },
            );
          },
          backgroundColor: ColorsDark.blueDark,
          lastRadius: 10,
          threeRadius: 10,
          text: 'Add',
          width: 90.w,
          height: 35.h,
        ),
      ],
    );
  }
}
