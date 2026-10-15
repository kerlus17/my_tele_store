import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tele_store/core/common/widgets/custom_container_linear_admin.dart';
import 'package:tele_store/core/common/widgets/custom_text.dart';
import 'package:tele_store/core/extentions/context_extension.dart';
import 'package:tele_store/core/extentions/date_extension.dart';
import 'package:tele_store/core/style/colors/colors_dark.dart';
import 'package:tele_store/core/style/fonts/font_family_helper.dart';
import 'package:tele_store/core/style/fonts/font_weight_helper.dart';
import 'package:tele_store/features/admin/add_notification/data/models/add_notification_model.dart';
import 'package:tele_store/features/admin/add_notification/presentation/widgets/delete/delete_notification.dart';
import 'package:tele_store/features/admin/add_notification/presentation/widgets/edit/edit_notification.dart';
import 'package:tele_store/features/admin/add_notification/presentation/widgets/send_notification.dart';

class AddNotificationItem extends StatelessWidget {
  const AddNotificationItem({
    required this.indexId, required this.notification,
    super.key,
  });

  final AddNotificationModel notification;
  final int indexId;
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
              title: "Notification Title:",
              body: notification.title,
            ),
            const Spacer(),
            notificationInfo(
              title: "Notification Title:",
              body: notification.body,
            ),
            const Spacer(),
            notificationInfo(
              title: 'Create At:',
              body: notification.createdAt.getFormatDayMonthYear(),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                DeleteNotification(notification: notification),
                SizedBox(width: 40.w),
                EditNotification(notification: notification),
                SizedBox(width: 40.w),
                SendNotification(notification: notification,indexId:indexId ,),
              ],
            ),
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
