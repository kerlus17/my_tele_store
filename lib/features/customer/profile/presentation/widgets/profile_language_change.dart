import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tele_store/core/app/app_cubit/app_cubit.dart';
import 'package:tele_store/core/common/dialogs/custom_dialogs.dart';
import 'package:tele_store/core/common/widgets/custom_text.dart';
import 'package:tele_store/core/extentions/context_extension.dart';
import 'package:tele_store/core/style/fonts/font_weight_helper.dart';
import 'package:tele_store/core/style/images/app_images.dart';
import 'package:tele_store/language/app_localizations.dart';
import 'package:tele_store/language/lang_keys.dart';

class ProfileLanguageChange extends StatelessWidget {
  const ProfileLanguageChange({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AppCubitCubit>();
    return BlocBuilder(
      bloc: cubit,
      builder: (context, state) {
        return Row(
          children: [
            SvgPicture.asset(
              AppImages.language,
              color: context.color.textColor,
            ),
            SizedBox(width: 10.w),
            TextApp(
              text: context.translate(LangKeys.languageTilte),
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
                  textBody: context.translate(LangKeys.changeToTheLanguage),
                  textButton1: context.translate(LangKeys.sure),
                  textButton2: context.translate(LangKeys.cancel),
                  isLoading: false,
                  onPressed: () {
                    selectLanguagesButton(context: context, cubit: cubit);
                  },
                );
              },
              child: Row(
                children: [
                  TextApp(
                    text: context.translate(LangKeys.languageTilte),
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
      },
    );
  }

  void selectLanguagesButton({
    required BuildContext context,
    required AppCubitCubit cubit,
  }) {
    if (AppLocalizations.of(context)!.isEnLocale) {
      cubit.toArabic();
    } else {
      cubit.toEnglish();
    }
    context.pop();
  }
}
