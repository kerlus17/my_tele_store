import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tele_store/core/common/dialogs/custom_dialogs.dart';
import 'package:tele_store/core/common/widgets/custom_text.dart';
import 'package:tele_store/core/extentions/context_extension.dart';
import 'package:tele_store/core/style/fonts/font_weight_helper.dart';
import 'package:tele_store/core/style/images/app_images.dart';
import 'package:tele_store/core/utils/app_logout.dart';
import 'package:tele_store/language/lang_keys.dart';

class LogoutWidget extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          AppImages.logout,
          color: context.color.textColor,
        ),
        SizedBox(width: 10.w),
        TextApp(
          text: context.translate(LangKeys.logOut),
          theme: context.textStyle.copyWith(
            fontSize: 18.sp,
            fontWeight: FontWeightHelper.regular,
          ),
        ),
        const Spacer(),
        InkWell(
          onTap: () {
            CustomDialog.twoButtonDialog(
              context: context,
              textBody: context.translate(LangKeys.logOutFromApp),
              textButton1: context.translate(LangKeys.yes),
              textButton2: context.translate(LangKeys.no),
              isLoading: false,
              onPressed: () async{
               await AppLogout().logout();
              },
            );
          },
          child: Row(
            children: [
              TextApp(
                text: context.translate(LangKeys.logOut),
                theme: context.textStyle.copyWith(
                  fontSize: 18.sp,
                  fontWeight: FontWeightHelper.regular,
                ),
              ),
              SizedBox(width: 5.w),
              Icon(
                Icons.arrow_forward_ios,
                color: context.color.textColor,
                size: 15,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
