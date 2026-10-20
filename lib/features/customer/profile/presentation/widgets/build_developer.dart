import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tele_store/core/common/widgets/custom_text.dart';
import 'package:tele_store/core/extentions/context_extension.dart';
import 'package:tele_store/core/routes/app_routes.dart';
import 'package:tele_store/core/style/fonts/font_weight_helper.dart';
import 'package:tele_store/core/style/images/app_images.dart';
import 'package:tele_store/language/lang_keys.dart';

class BuildDeveloper extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          AppImages.language,
          color: context.color.textColor,
        ),
        SizedBox(width: 10.w),
        TextApp(
          text: context.translate(LangKeys.buildDeveloper),
          theme: context.textStyle.copyWith(
            fontSize: 18.sp,
            fontWeight: FontWeightHelper.regular,
          ),
        ),
        const Spacer(),
        InkWell(
          onTap: () {
            context.pushName(
              AppRoutes.webView,
              arguments: "https://www.linkedin.com/in/kerlus-nageh/?isSelfProfile=true",
            );
          },
          child: Row(
            children: [
              TextApp(
                text: "tele app",
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
