import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tele_store/core/common/animation/animate_do.dart';
import 'package:tele_store/core/enums/nav_bar_enum.dart';
import 'package:tele_store/core/extentions/context_extension.dart';
import 'package:tele_store/core/style/images/app_images.dart';
import 'package:tele_store/features/customer/main/presentaion/cubit/main_cubit.dart';
import 'package:tele_store/features/customer/main/presentaion/widgets/icon_tap_nav_bar.dart';

class MainBottomNavBar extends StatelessWidget {
  const MainBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadeInUp(
      duration: 800,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: SizedBox(
          height: 103.h,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Column(
                children: [
                  SizedBox(height: 15.h),
                  BlocBuilder<MainCubit, MainState>(
                    builder: (context, state) {
                      final cubit = context.read<MainCubit>();
                      return Container(
                        height: 88.h,
                        color: context.color.navBarbg,
                        child: Align(
                          alignment: Alignment.topRight,
                          child: SizedBox(
                            height: 45.h,
                            width: 300.w,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IconTapNavBar(
                                    onTap: () {
                                      cubit.selectedNavBarIcons(
                                        NavBarEnum.home,
                                      );
                                    },
                                    icon: AppImages.homeTab,
                                    isSelected:
                                        cubit.navBarEnum == NavBarEnum.home,
                                  ),
                                  IconTapNavBar(
                                    onTap: () {
                                      cubit.selectedNavBarIcons(
                                        NavBarEnum.categories,
                                      );
                                    },
                                    icon: AppImages.categoriesTab,
                                    isSelected:
                                        cubit.navBarEnum ==
                                        NavBarEnum.categories,
                                  ),
                                  IconTapNavBar(
                                    onTap: () {
                                      cubit.selectedNavBarIcons(
                                        NavBarEnum.favourite,
                                      );
                                    },
                                    icon: AppImages.favouritesTab,
                                    isSelected:
                                        cubit.navBarEnum ==
                                        NavBarEnum.favourite,
                                  ),
                                  IconTapNavBar(
                                    onTap: () {
                                      cubit.selectedNavBarIcons(
                                        NavBarEnum.profile,
                                      );
                                    },
                                    icon: AppImages.profileTab,
                                    isSelected:
                                        cubit.navBarEnum == NavBarEnum.profile,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),

              Positioned(
                top: -12,
                left: -8,
                child: Container(
                  height: 100.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(context.assets.bigNavBar!),
                    ),
                  ),
                ),
              ),

              Positioned(
                left: 35,
                top: 17,
                child: SvgPicture.asset(
                  AppImages.carShop,
                  color: Colors.white,
                  height: 20.h,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
