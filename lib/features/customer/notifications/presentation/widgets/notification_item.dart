import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tele_store/core/common/widgets/custom_text.dart';
import 'package:tele_store/core/extentions/context_extension.dart';
import 'package:tele_store/core/style/fonts/font_weight_helper.dart';
import 'package:tele_store/core/style/images/app_images.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({
    required this.body,
    required this.createdAt,
    super.key,
    required this.title,
  });
  final String title;
  final String body;
  final String createdAt;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      isThreeLine: true,
      onTap: () {},
      leading: Container(
        height: 50.h,
        width: 50.w,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.white,
            width: 1.5,
          ),
        ),
        child: Center(
          child: SvgPicture.asset(
            AppImages.notification,
            color: Colors.pink,
            height: 30.h,
          ),
        ),
      ),
      title: TextApp(
        text: title,
        theme: context.textStyle.copyWith(
          fontSize: 12.sp,
          fontWeight: FontWeightHelper.medium,
          color: Colors.white,
        ),
      ), // TextApp
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 5.h),
          //Body
          TextApp(
            text: body,
            theme: context.textStyle.copyWith(
              fontSize: 12.sp,
              fontWeight: FontWeightHelper.medium,
              color: Colors.white,
            ),
          ), // TextApp
          SizedBox(height: 5.h),
          //Body
          TextApp(
            text: 'created at: $createdAt',
            theme: context.textStyle.copyWith(
              fontSize: 12.sp,
              fontWeight: FontWeightHelper.medium,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 5.h),
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),
        ],
      ),
      trailing: GestureDetector(
        onTap: () {},
        child: const Icon(
          Icons.close,
          color: Colors.yellow,
          size: 20,
        ), // Icon
      ), // GestureDetector
    );
  }
}
