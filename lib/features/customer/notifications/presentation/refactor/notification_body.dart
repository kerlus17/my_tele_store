import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tele_store/features/customer/notifications/data/models/notification_model.dart';
import 'package:tele_store/features/customer/notifications/presentation/controller/notifications_controller.dart';
import 'package:tele_store/features/customer/notifications/presentation/widgets/notification_item.dart';

class NotificationBody extends StatelessWidget {
  const NotificationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<NotificationModel>>(
      stream: NotificationController().getNotificationList(),
      builder: (context, asyncSnapshot) {
        if (asyncSnapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (!asyncSnapshot.hasData || asyncSnapshot.data!.isEmpty) {
          return const Center(
            child: Text('لا توجد إشعارات حالياً'),
          );
        }

        final notifications = asyncSnapshot.data!;

        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          child: ListView.separated(
            itemCount: notifications.length,
            itemBuilder: (context, index) {
              return NotificationItem(
                close: () {
                  
                },
                productId: notifications[index].productId.toString(),
                title: notifications[index].title,
                body: notifications[index].body,
                createdAt: notifications[index].createdAt,
              );
            },
            separatorBuilder: (context, index) => SizedBox(
              height: 10.h,
            ),
          ),
        );
      },
    );
  }
}
