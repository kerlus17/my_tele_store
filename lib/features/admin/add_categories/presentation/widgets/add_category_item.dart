import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tele_store/core/common/widgets/custom_container_linear_admin.dart';
import 'package:tele_store/core/common/widgets/custom_text.dart';
import 'package:tele_store/core/extentions/context_extension.dart';
import 'package:tele_store/core/style/fonts/font_family_helper.dart';
import 'package:tele_store/core/style/fonts/font_weight_helper.dart';
import 'package:tele_store/features/admin/add_categories/presentation/widgets/delete/delete_category_icon_widget.dart';
import 'package:tele_store/features/admin/add_categories/presentation/widgets/update/update_category_icon_widget.dart';

class AddCatgeoryItem extends StatelessWidget {
  const AddCatgeoryItem({
    super.key,
    required this.name,
    required this.image,
    required this.categoryId,
  });

  final String name;
  final String image;
  final String categoryId;

  @override
  Widget build(BuildContext context) {
    return CustomContainerLinearAdmin(
      height: 130.h,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  TextApp(
                    text: name,
                    softWrap: true,
                    maxLines: 2,
                    textOverflow: TextOverflow.ellipsis,
                    theme: context.textStyle.copyWith(
                      fontSize: 18.sp,
                      fontWeight: FontWeightHelper.bold,
                      fontFamily: FontFamilyHelper.poppinsEnglish,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      //Delete
                      delete_category_icon_widget(
                        CategoryId: categoryId,
                      ),
                      SizedBox(width: 20.w),

                      update_category_icon_widget(
                        image: image,
                        name: name,
                        categoryId: categoryId,
                      ),
                    ],
                  ),
                  Spacer(),
                ],
              ),
            ),

            ClipRect(
              child: CachedNetworkImage(
                height: 90.h,
                width: 120.w,
                imageUrl: image,
                errorWidget: (context, url, error) => const Icon(
                  Icons.error,
                  color: Colors.red,
                  size: 70,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
