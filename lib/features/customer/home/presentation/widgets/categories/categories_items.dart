import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tele_store/core/common/widgets/custom_container_linear_customer.dart';
import 'package:tele_store/core/common/widgets/custom_text.dart';
import 'package:tele_store/core/extentions/context_extension.dart';
import 'package:tele_store/core/routes/app_routes.dart';
import 'package:tele_store/core/style/fonts/font_weight_helper.dart';

class CategoriesItem extends StatelessWidget {
  const CategoriesItem({
    required this.id,
    required this.image,
    required this.title,
    this.skew = -0.12,
    super.key,
  });

  final String image;
  final String title;
  final int id;
  final double skew;

  @override
  Widget build(BuildContext context) {
    final boxHeight = 71.h;
    final boxWidth = 71.w;

    return GestureDetector(
      onTap: () {
        context.pushName(
          AppRoutes.category,
          arguments: (categoryName: title, categoryId: id),
        );
      },
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.h),
            child: SizedBox(
              height: boxHeight,
              width: boxWidth,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.skewY(skew),
                      child: CustomContainerLinearCustomer(
                        height: boxHeight,
                        width: boxWidth,
                        child: const SizedBox.shrink(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(6.r),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: CachedNetworkImage(
                        imageUrl: image,
                        fit: BoxFit.contain,
                        height: boxHeight,
                        width: boxWidth,
                        errorWidget: (context, url, error) => Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.image_not_supported_outlined,
                              color: Colors.grey,
                              size: 24,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 35.h,
            width: 75.w,
            child: TextApp(
              text: title,
              maxLines: 2,
              textAlign: TextAlign.center,
              theme: context.textStyle.copyWith(
                fontWeight: FontWeightHelper.bold,
                fontSize: 12.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}