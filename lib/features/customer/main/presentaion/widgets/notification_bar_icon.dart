import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tele_store/core/common/widgets/custom_text.dart';
import 'package:tele_store/core/extentions/context_extension.dart';
import 'package:tele_store/core/style/fonts/font_weight_helper.dart';
import 'package:tele_store/core/style/images/app_images.dart';
import 'package:badges/badges.dart' as badges;
import 'package:tele_store/features/customer/notifications/data/models/notification_model.dart';
import 'package:tele_store/features/customer/notifications/presentation/controller/notifications_controller.dart';

class NotificationBarIcon extends StatelessWidget {
  const NotificationBarIcon({required this.isSelected, super.key});

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<NotificationModel>>(
      stream: NotificationController().getNotificationList(),
      builder: (context, snapshot) {
        if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return SvgPicture.asset(
            AppImages.notification,
            color: isSelected ? context.color.navBarSelectedTab : Colors.grey,
            height: 25.h,
          ).animate(target: isSelected ? 1 : 0).scaleXY(end: 1.2);
        }

        final numberOfNotifi = snapshot.data!
            .where((e) => e.isSeen == false)
            .length;

        return badges.Badge(
          showBadge: numberOfNotifi > 0,
          badgeAnimation: badges.BadgeAnimation.scale(
            animationDuration: const Duration(milliseconds: 300),
          ),
          position: badges.BadgePosition.topEnd(end: -4.w, top: -8.h),

          badgeContent: TextApp(
            text: numberOfNotifi>=9 ? '9+': numberOfNotifi.toString(),
            theme: context.textStyle.copyWith(
              color: Colors.white,
              fontWeight: FontWeightHelper.bold,
              fontSize: 11.sp,
            ),
            textAlign: TextAlign.center,
          ),
          badgeStyle: badges.BadgeStyle(
            badgeColor: Colors.pink,
            padding: EdgeInsets.all(5.h),
            elevation: 0,
          ),

          child: SvgPicture.asset(
            AppImages.notification,
            color: isSelected ? context.color.navBarSelectedTab : Colors.grey,
            height: 25.h,
          ).animate(target: isSelected ? 1 : 0).scaleXY(end: 1.2),
        );
      },
    );
  }
}
