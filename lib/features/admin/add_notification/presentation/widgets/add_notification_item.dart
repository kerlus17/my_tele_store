import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tele_store/core/common/widgets/custom_container_linear_admin.dart';
import 'package:tele_store/core/common/widgets/custom_text.dart';
import 'package:tele_store/core/extentions/context_extension.dart';
import 'package:tele_store/core/style/colors/colors_dark.dart';
import 'package:tele_store/core/style/fonts/font_family_helper.dart';
import 'package:tele_store/core/style/fonts/font_weight_helper.dart';
import 'package:tele_store/features/admin/add_notification/presentation/widgets/edit/edit_notification.dart';

class AddNotificationItem extends StatelessWidget {
  const AddNotificationItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainerLinearAdmin(
      height: 180.h,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
        child: Column(
          children: [
            const Spacer(),
            notificationInfo(
                title: "Notification Title:", body: "Notification body"),
            const Spacer(),
            notificationInfo(
                title: "Notification Title:", body: "Notification body"),
            const Spacer(),
            notificationInfo(title: "Create At:", body: "2023-06-20 12:00:00"),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
                SizedBox(width: 40.w),
                EditNotification(),
                SizedBox(width: 40.w),
                Icon(
                  Icons.send,
                  color: Colors.green,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class notificationInfo extends StatelessWidget {
  const notificationInfo({required this.title, required this.body, super.key});
  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextApp(
          text: title,
          theme: context.textStyle.copyWith(
            fontSize: 14.sp,
            color: Colors.white,
            fontFamily: FontFamilyHelper.poppinsEnglish,
            fontWeight: FontWeightHelper.medium,
          ),
        ),
        SizedBox(height: 8.w),
        Flexible(
          child: TextApp(
            text: body,
            theme: context.textStyle.copyWith(
              fontSize: 14.sp,
              color: ColorsDark.blueLight,
              fontFamily: FontFamilyHelper.poppinsEnglish,
              fontWeight: FontWeightHelper.medium,
            ),
          ),
        ),
      ],
    );
  }
}
