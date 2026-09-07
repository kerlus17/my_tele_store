import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tele_store/core/common/animation/animate_do.dart';
import 'package:tele_store/core/common/widgets/custom_text.dart';
import 'package:tele_store/core/extentions/context_extension.dart';
import 'package:tele_store/core/routes/app_routes.dart';
import 'package:tele_store/core/style/fonts/font_weight_helper.dart';
import 'package:tele_store/features/auth/presentation/widgets/auth_title_info.dart';
import 'package:tele_store/features/auth/presentation/widgets/dark_and_lang_button.dart';

import 'package:tele_store/features/auth/presentation/widgets/sign_up/signup_button.dart';
import 'package:tele_store/features/auth/presentation/widgets/sign_up/signup_textForm.dart';
import 'package:tele_store/features/auth/presentation/widgets/sign_up/user_avatar.dart';
import 'package:tele_store/language/lang_keys.dart';

class SignupBody extends StatelessWidget {
  const SignupBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const DarkAndLangButtons(),
            SizedBox(height: 30.h),
            AuthTitleInfo(
              title: context.translate(LangKeys.signUp),
              description: context.translate(LangKeys.signUpWelcome),
            ),
            SizedBox(height: 10.h),
            const UserAvatarImage(),
            SizedBox(height: 30.h),
            const SignupTextForm(),
            SizedBox(height: 30.h),
            const SignupButton(),
            SizedBox(height: 30.h),

            CustomFadeInDown(
              duration: 400,
              child: TextButton(
                onPressed: () {
                  context.pushReplacementNamed(AppRoutes.login);
                },
                child: TextApp(
                  text: context.translate(LangKeys.youHaveAccount),
                  theme: context.textStyle.copyWith(
                    fontSize: 14.sp,
                    fontWeight: FontWeightHelper.bold,
                    color: context.color.bluePinkLight,
                  ),
                ),
              ), // TextApp
            ), // CustomFadeInDown
          ],
        ),
      ),
    );
  }
}