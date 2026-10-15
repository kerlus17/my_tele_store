import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tele_store/core/common/animation/animate_do.dart';
import 'package:tele_store/core/common/widgets/custom_linear_button.dart';
import 'package:tele_store/core/common/widgets/custom_text.dart';
import 'package:tele_store/core/enums/nav_bar_enum.dart';
import 'package:tele_store/core/extentions/context_extension.dart';
import 'package:tele_store/core/style/fonts/font_weight_helper.dart';
import 'package:tele_store/core/style/images/app_images.dart';
import 'package:tele_store/features/customer/main/presentaion/cubit/main_cubit.dart';
import 'package:tele_store/language/lang_keys.dart';

class MainCustomerAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const MainCustomerAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: context.color.mainColor,
      elevation: 0,
      title: BlocBuilder<MainCubit, MainState>(
        builder: (context, state) {
          final cubit = context.read<MainCubit>();
          if (cubit.navBarEnum == NavBarEnum.home) {
            return Row(
              children: [
                CustomFadeInRight(
                  duration: 800,
                  child: TextApp(
                    text: context.translate(LangKeys.chooseProducts),
                    theme: context.textStyle.copyWith(
                      fontSize: 20.sp,
                      fontWeight: FontWeightHelper.bold,
                      color: context.color.textColor,
                    ),
                  ),
                ),
                CustomFadeInLeft(
                  duration: 800,
                  child: CustomLinearButton(
                    onPressed: () {},
                    child: Center(
                      child: SvgPicture.asset(AppImages.search),
                    ),
                  ),
                ),
              ],
            );
          } else {
            return SizedBox.shrink();
          }
        },
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(double.infinity, 70.h);
}
