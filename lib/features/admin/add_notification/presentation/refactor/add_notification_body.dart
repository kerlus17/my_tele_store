import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tele_store/features/admin/add_notification/presentation/widgets/add_notification_item.dart';
import 'package:tele_store/features/admin/add_notification/presentation/widgets/create/create_notification.dart';

class AddNotificationBody extends StatelessWidget {
  const AddNotificationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
        child: Column(
          children: [
            CreateNotification(),
            Expanded(
                child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(child: SizedBox(height: 20.h)),
                SliverToBoxAdapter(
                    child: ListView.separated(
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return AddNotificationItem();
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(height: 14.h);
                        },
                        itemCount: 3)),
              ],
            ))
          ],
        ));
  }
}
