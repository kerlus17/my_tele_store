import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tele_store/core/common/widgets/custom_text.dart';
import 'package:tele_store/core/extentions/context_extension.dart';
import 'package:tele_store/core/routes/app_routes.dart';
import 'package:tele_store/core/style/fonts/font_weight_helper.dart';
import 'package:tele_store/core/style/images/app_images.dart';

const _cardColor = Color(0xFF1E3F86);
const _borderColor = Color(0xFFD4537E);
const _iconTileColor = Color(0xFFD4537E);
const _bodyColor = Color(0xFFB5D4F4);
const _timeColor = Color(0xFF85B7EB);
const _closeColor = Color(0xFFED93B1);

class NotificationItem extends StatelessWidget {
  const NotificationItem({
    required this.isRead,
    required this.close,
    required this.body,
    required this.createdAt,
    required this.title,
    required this.productId,
    this.skew = -0.18,
    super.key,
  });

  final String title;
  final String body;
  final String createdAt;
  final String productId;
  final VoidCallback close;
  final double skew;
  final bool isRead;

  void _onTap(BuildContext context) {
    final id = int.tryParse(productId);
    if (id != null && id != -1) {
      context.pushName(AppRoutes.Productdetails, arguments: id);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => _onTap(context),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 6.h),
        child: Stack(
          children: [
            Positioned.fill(
              child: Transform(
                alignment: Alignment.center,
                transform: Matrix4.skewX(skew),
                child: Container(
                  decoration: BoxDecoration(
                    color: _cardColor,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: isRead ? Colors.transparent : _borderColor,
                      width: isRead ? 0 : 0.8,
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 14.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 44.r,
                    width: 44.r,
                    decoration: BoxDecoration(
                      color: _iconTileColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        AppImages.notification,
                        height: 24.h,
                        colorFilter: const ColorFilter.mode(
                          Colors.white,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 12.w),

                  // النصوص
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextApp(
                          text: title,
                          maxLines: 1,
                          theme: context.textStyle.copyWith(
                            fontSize: 14.sp,
                            fontWeight: FontWeightHelper.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 2.h),
                        TextApp(
                          text: body,
                          maxLines: 2,
                          theme: context.textStyle.copyWith(
                            fontSize: 12.sp,
                            fontWeight: FontWeightHelper.regular,
                            color: _bodyColor,
                          ),
                        ),
                        SizedBox(height: 6.h),
                        TextApp(
                          text: createdAt,
                          maxLines: 1,
                          theme: context.textStyle.copyWith(
                            fontSize: 11.sp,
                            fontWeight: FontWeightHelper.regular,
                            color: _timeColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
