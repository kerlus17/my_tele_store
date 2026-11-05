import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tele_store/core/common/widgets/custom_container_linear_admin.dart';
import 'package:tele_store/core/common/widgets/custom_favourite_button.dart';
import 'package:tele_store/core/common/widgets/custom_text.dart';
import 'package:tele_store/core/extentions/context_extension.dart';
import 'package:tele_store/core/extentions/string_extension.dart';
import 'package:tele_store/core/routes/app_routes.dart';
import 'package:tele_store/core/style/fonts/font_weight_helper.dart';
import 'package:tele_store/features/customer/favourite/presentation/cubit/favourite/favourite_cubit.dart';

class CustomProductItem extends StatelessWidget {
  const CustomProductItem({
    required this.productid,
    required this.title,
    required this.categoryName,
    required this.price,
    required this.imgUrl,
    this.skew = -0.12,
    super.key,
  });

  final String imgUrl;
  final String categoryName;
  final String title;
  final double price;
  final int productid;
  final double skew;

  @override
  Widget build(BuildContext context) {
    final cardWidth = 165.w;
    final cardHeight = 215.h;

    return GestureDetector(
      onTap: () {
        context.pushName(AppRoutes.Productdetails, arguments: productid);
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 14.h),
        child: SizedBox(
          width: cardWidth,
          height: cardHeight,
          child: Stack(
            children: [
              Positioned.fill(
                child: Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.skewY(skew),
                  child: const CustomContainerLinearAdmin(
                    height: double.infinity,
                    width: double.infinity,
                    child: SizedBox.shrink(),
                  ),
                ),
              ),
    
              Padding(
                padding: EdgeInsets.all(14.r),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: BlocBuilder<FavouriteCubit, FavouriteState>(
                        builder: (context, state) {
                          return CustomFavoriteButton(
                            size: 20,
                            isFavorites: context
                                .read<FavouriteCubit>()
                                .isFavourite(
                                  productid.toString(),
                                ),
                            onTap: () async {
                              await context
                                  .read<FavouriteCubit>()
                                  .manageFavourite(
                                    categoryName: categoryName,
                                    productId: productid.toString(),
                                    image: imgUrl,
                                    price: price.toString(),
                                    title: title,
                                  );
                            },
                          );
                        },
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: CachedNetworkImage(
                          imageUrl: imgUrl.imageProductFormate(),
                          fit: BoxFit.contain,
                          width: double.infinity,
                          errorWidget: (context, url, error) => const Icon(
                            Icons.error,
                            color: Colors.red,
                            size: 50,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 6.h),
                    TextApp(
                      text: categoryName,
                      theme: context.textStyle.copyWith(
                        fontSize: 11.sp,
                        color: Colors.white60,
                        fontWeight: FontWeightHelper.regular,
                      ),
                      maxLines: 1,
                    ),
                    SizedBox(height: 2.h),
                    TextApp(
                      text: title,
                      theme: context.textStyle.copyWith(
                        fontSize: 13.sp,
                        fontWeight: FontWeightHelper.bold,
                      ),
                      maxLines: 1,
                    ),
                    SizedBox(height: 2.h),
                    TextApp(
                      text: '\$ $price',
                      theme: context.textStyle.copyWith(
                        fontSize: 12.sp,
                        color: Colors.white70,
                        fontWeight: FontWeightHelper.medium,
                      ),
                      maxLines: 1,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
