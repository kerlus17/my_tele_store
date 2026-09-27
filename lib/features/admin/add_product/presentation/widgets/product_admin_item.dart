import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tele_store/core/app/upload_image/cubit/cubit/upload_image_cubit.dart';
import 'package:tele_store/core/common/bottom_sheet/custom_bottom_sheet.dart';
import 'package:tele_store/core/common/widgets/custom_container_linear_admin.dart';
import 'package:tele_store/core/common/widgets/custom_text.dart';
import 'package:tele_store/core/di/injection_container.dart';
import 'package:tele_store/core/extentions/context_extension.dart';
import 'package:tele_store/core/extentions/string_extension.dart';
import 'package:tele_store/core/style/fonts/font_weight_helper.dart';
import 'package:tele_store/features/admin/add_categories/presentation/bloc/get_all_admin_categories/get_all_admin_categories_bloc.dart';
import 'package:tele_store/features/admin/add_product/presentation/bloc/get_all_admin_products/get_all_admin_products_bloc.dart';
import 'package:tele_store/features/admin/add_product/presentation/bloc/update_product/update_product_bloc.dart';
import 'package:tele_store/features/admin/add_product/presentation/widgets/delete/delete_product_widget.dart';
import 'package:tele_store/features/admin/add_product/presentation/widgets/update/update_product_bottom_sheet.dart';

class ProductAdminItem extends StatelessWidget {
  const ProductAdminItem({
    required this.categoryId,
    required this.description,
    required this.imgList,
    required this.imgUrl,
    required this.categoryName,
    required this.title,
    required this.price,
    required this.productId,
    super.key,
  });
  final String title;
  final String price;
  final String categoryName;
  final String productId;
  final String description;
  final String categoryId;

  final String imgUrl;
  final List<String> imgList;

  @override
  Widget build(BuildContext context) {
    return CustomContainerLinearAdmin(
      height: 250.h,
      width: 165.w,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DeleteProductWidget(productId: productId),
                IconButton(
                  onPressed: () {
                    CustomBottomSheet.showModalBottomSheetContainer(
                      context: context,
                      widget: MultiBlocProvider(
                        providers: [
                          BlocProvider(
                              create: (context) => sl<UpdateProductBloc>()),
                          BlocProvider(
                              create: (context) => sl<UploadImageCubit>()),
                          BlocProvider(
                            create: (context) => sl<GetAllAdminCategoriesBloc>()
                              ..add(GetAllAdminCategoriesEvent
                                  .getAllAdminCategories(isloading: true)),
                          ),
                        ],
                        child: UpdateProductBottomSheet(
                          categoryId: categoryId,
                          categoryName: categoryName,
                          description: description,
                          price: price,
                          productId: productId,
                          title: title,
                          imgList: imgList,
                        ),
                      ),
                      whenComplete: () {
                        context.read<GetAllAdminProductsBloc>().add(
                            GetAllAdminProductsEvent.fetchAllAdminProducts(
                                isloading: false));
                      },
                    );
                  },
                  padding: EdgeInsets.zero,
                  icon: const Icon(
                    Icons.edit,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
            Flexible(
              child: Center(
                child: CachedNetworkImage(
                  height: 200.h,
                  width: 120.w,
                  imageUrl: imgUrl.imageProductFormate(),
                  errorWidget: (context, url, error) => const Icon(
                    Icons.error,
                    color: Colors.red,
                    size: 70,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: TextApp(
                text: categoryName,
                theme: context.textStyle.copyWith(
                  fontSize: 13.sp,
                  fontWeight: FontWeightHelper.medium,
                ),
                maxLines: 1,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: TextApp(
                text: '\$ $price',
                theme: context.textStyle.copyWith(
                  fontSize: 13.sp,
                  fontWeight: FontWeightHelper.medium,
                ),
              ),
            ),
            SizedBox(height: 10.h),
          ],
        ),
      ),
    );
  }
}
