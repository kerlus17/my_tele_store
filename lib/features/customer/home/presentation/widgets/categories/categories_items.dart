import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tele_store/core/common/widgets/custom_container_linear_customer.dart';
import 'package:tele_store/core/common/widgets/custom_text.dart';
import 'package:tele_store/core/extentions/context_extension.dart';
import 'package:tele_store/core/style/fonts/font_weight_helper.dart';

class CategoriesItem extends StatelessWidget {
  const CategoriesItem({required this.image, required this.title, super.key});

  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomContainerLinearCustomer(
          height: 71.h,
          width: 71.w,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: CachedNetworkImage(
              imageUrl: image,
              fit: BoxFit.contain,
              height: 71.h,
              width: 71.w,
              errorWidget: (context, url, error) => const Icon(
                Icons.error,
                color: Colors.red,
                size: 30,
              ),
            ),
          ),
        ),
        SizedBox(height: 10.h),
        SizedBox(
          height: 35.h,
          width: 75.w,
          child: TextApp(
            text: title,
            textAlign: TextAlign.center,
            theme: context.textStyle.copyWith(
              fontWeight: FontWeightHelper.bold,
              fontSize: 12.sp,
            ),
          ),
        ),
      ],
    );
  }
}
