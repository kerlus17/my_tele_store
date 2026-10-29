import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tele_store/core/common/widgets/custom_favourite_button.dart';
import 'package:tele_store/core/common/widgets/custom_share_button.dart';
import 'package:tele_store/core/common/widgets/custom_text.dart';
import 'package:tele_store/core/extentions/context_extension.dart';
import 'package:tele_store/core/style/fonts/font_weight_helper.dart';
import 'package:tele_store/features/customer/product_details/data/models/product_details_response.dart';
import 'package:tele_store/features/customer/product_details/presentation/widgets/product_details_image_slider.dart';

class ProductDatailsBody extends StatelessWidget {
  const ProductDatailsBody({required this.productDetailsmodel, super.key});

  final ProductDetailsModel productDetailsmodel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h, left: 20.w, right: 20.w),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomShareButton(size: 30),
                CustomFavoriteButton(size: 30),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            ProductDetailsImageSlider(
              imglist: productDetailsmodel.images,
            ),
            SizedBox(height: 30.h),
            TextApp(
              text: productDetailsmodel.title ?? '',
              theme: context.textStyle.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeightHelper.bold,
              ),
            ),
            SizedBox(height: 15.h),
            TextApp(
              text: productDetailsmodel.description ?? '',
              theme: context.textStyle.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeightHelper.regular,
                color: context.color.textColor,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
