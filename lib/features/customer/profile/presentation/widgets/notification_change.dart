import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tele_store/core/app/app_cubit/app_cubit.dart';
import 'package:tele_store/core/common/toast/show_toast.dart';
import 'package:tele_store/core/common/widgets/custom_text.dart';
import 'package:tele_store/core/extentions/context_extension.dart';
import 'package:tele_store/core/serves/push_notifications/firebase_claud_messenging.dart';
import 'package:tele_store/core/style/fonts/font_weight_helper.dart';
import 'package:tele_store/core/style/images/app_images.dart';
import 'package:tele_store/language/lang_keys.dart';

class NotificationChange extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AppCubitCubit>();
    return Row(
      children: [
        SvgPicture.asset(
          AppImages.darkMode,
          color: context.color.textColor,
        ),
        SizedBox(width: 10.w),
        TextApp(
          text: context.translate(LangKeys.notification),
          theme: context.textStyle.copyWith(
            fontSize: 18.sp,
            fontWeight: FontWeightHelper.regular,
          ),
        ),
        const Spacer(),
        ValueListenableBuilder(
          valueListenable:
              FirebaseCloudMessaging.instance.isNotificationSubscribe,
          builder: (_, value, _) {
            return Transform.scale(
              scale: 0.75,
              child: Switch.adaptive(
                value: value,
                inactiveTrackColor: const Color(0xff262626),
                activeColor: Colors.green,
                onChanged: (value) {
                  FirebaseCloudMessaging.instance.controllerForUserSubscribe();
                  if (FirebaseCloudMessaging.instance.isNotificationSubscribe ==
                      ValueNotifier<bool>(true)) {
                    ShowToast.showToastSuccessTop(
                      context: context,
                      message: context.translate(
                        LangKeys.subscribe_to_notification,
                      ),
                    );
                  } else {
                    ShowToast.showToastSuccessTop(
                      context: context,
                      message: context.translate(
                        LangKeys.unsubscribe_to_notification,
                      ),
                    );
                  }
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
