import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tele_store/core/common/animation/animate_do.dart';
import 'package:tele_store/core/common/widgets/custom_text.dart';
import 'package:tele_store/core/extentions/context_extension.dart';
import 'package:tele_store/core/style/fonts/font_weight_helper.dart';
import 'package:tele_store/features/customer/profile/presentation/bloc/profile/profile_bloc.dart';
import 'package:tele_store/features/customer/profile/presentation/widgets/build_developer.dart';
import 'package:tele_store/features/customer/profile/presentation/widgets/build_version.dart';
import 'package:tele_store/features/customer/profile/presentation/widgets/logout_widget.dart';
import 'package:tele_store/features/customer/profile/presentation/widgets/notification_change.dart';
import 'package:tele_store/features/customer/profile/presentation/widgets/profile_change_mode.dart';
import 'package:tele_store/features/customer/profile/presentation/widgets/profile_language_change.dart';
import 'package:tele_store/features/customer/profile/presentation/widgets/user_profile_info.dart';
import 'package:tele_store/features/customer/profile/presentation/widgets/user_profile_shimmer.dart';
import 'package:tele_store/language/lang_keys.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: BlocBuilder<ProfileBloc, ProfileState>(
                builder: (context, state) {
                  return state.when(
                    loading: UserProfileShimmer.new,
                    success: (userInfoData) => UserProfileInfo(
                      userInfo: userInfoData,
                    ),
                    errror: Text.new,
                  );
                },
              ),
            ),
            SizedBox(height: 20.h),
            CustomFadeInRight(
              duration: 400,
              child: TextApp(
                text: context.translate(LangKeys.applicationFeatures),
                theme: context.textStyle.copyWith(
                  fontSize: 18.sp,
                  fontWeight: FontWeightHelper.bold,
                ),
              ),
            ),
            SizedBox(height: 30.h),
            // language
            const CustomFadeInRight(
              duration: 400,
              child: ProfileLanguageChange(),
            ),
            SizedBox(height: 30.h),

            const CustomFadeInRight(
              duration: 400,
              child: ProfileChangeMode(),
            ),
            SizedBox(height: 30.h),

            const CustomFadeInRight(
              duration: 400,
              child: BuildDeveloper(),
            ),
            SizedBox(height: 30.h),

            const CustomFadeInRight(
              duration: 400,
              child: NotificationChange(),
            ),
            SizedBox(height: 30.h),

            const CustomFadeInRight(
              duration: 400,
              child: BuildVersion(),
            ),
            SizedBox(height: 30.h),

            const CustomFadeInRight(
              duration: 400,
              child: LogoutWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
