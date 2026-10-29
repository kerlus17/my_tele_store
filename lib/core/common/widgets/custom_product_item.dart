import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tele_store/core/common/widgets/custom_container_linear_admin.dart';
import 'package:tele_store/core/common/widgets/custom_favourite_button.dart';
import 'package:tele_store/core/common/widgets/custom_share_button.dart';
import 'package:tele_store/core/common/widgets/custom_text.dart';
import 'package:tele_store/core/extentions/context_extension.dart';
import 'package:tele_store/core/extentions/string_extension.dart';
import 'package:tele_store/core/routes/app_routes.dart';
import 'package:tele_store/core/style/fonts/font_weight_helper.dart';

class CustomProductItem extends StatelessWidget {
  const CustomProductItem({
    required this.productid,
    required this.title,
    required this.categoryName,
    required this.price,
    required this.imgUrl,
    super.key,
  });

  final String imgUrl;
  final String categoryName;
  final String title;
  final double price;
  final int productid;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushName(AppRoutes.Productdetails, arguments: productid);
      },
      child: CustomContainerLinearAdmin(
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
                  CustomShareButton(size: 20),
                  CustomFavoriteButton(size: 20),
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
                  text: title,
                  theme: context.textStyle.copyWith(
                    fontSize: 13.sp,
                    fontWeight: FontWeightHelper.medium,
                  ),
                  maxLines: 1,
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
      ),
    );
  }
}
