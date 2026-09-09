// List<DrawerItemModel>

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tele_store/core/common/dialogs/custom_dialogs.dart';
import 'package:tele_store/core/common/widgets/custom_text.dart';
import 'package:tele_store/core/extentions/context_extension.dart'
    show ContextExt;
import 'package:tele_store/core/routes/app_routes.dart';
import 'package:tele_store/core/serves/shared_pref/pref_keys.dart';
import 'package:tele_store/core/serves/shared_pref/shared_pref.dart';
import 'package:tele_store/core/style/fonts/font_family_helper.dart';
import 'package:tele_store/core/style/fonts/font_weight_helper.dart';
import 'package:tele_store/features/admin/add_categories/presentation/screens/add_categories_screen.dart';
import 'package:tele_store/features/admin/add_notification/presentation/screens/add_notification_screen.dart';
import 'package:tele_store/features/admin/add_product/presentation/screens/add_product_screen.dart';
import 'package:tele_store/features/admin/dashBoard/presentation/screens/dash_board_screen.dart';
import 'package:tele_store/features/admin/users/presentation/screens/user_screen.dart';

List<DrawerItemModel> adminDrawerList(BuildContext context) {
  return <DrawerItemModel>[
    //DashBoard
    DrawerItemModel(
      icon: const Icon(
        Icons.dashboard,
        color: Colors.white,
      ),
      title: TextApp(
        text: 'DashBoard',
        theme: context.textStyle.copyWith(
          color: Colors.white,
          fontSize: 17.sp,
          fontFamily: FontFamilyHelper.poppinsEnglish,
          fontWeight: FontWeightHelper.bold,
        ),
      ),
      page: const DashBoardScreen(),
    ),
    //Categories
    DrawerItemModel(
      icon: const Icon(Icons.category_outlined, color: Colors.white),
      title: TextApp(
        text: 'Categories',
        theme: context.textStyle.copyWith(
          color: Colors.white,
          fontSize: 17.sp,
          fontFamily: FontFamilyHelper.poppinsEnglish,
          fontWeight: FontWeightHelper.bold,
        ),
      ),
      page: const AddCategoriesScreen(),
    ),
    //Product
    DrawerItemModel(
      icon: const Icon(
        Icons.production_quantity_limits,
        color: Colors.white,
      ),
      title: TextApp(
        text: 'Products',
        theme: context.textStyle.copyWith(
          color: Colors.white,
          fontSize: 17.sp,
          fontFamily: FontFamilyHelper.poppinsEnglish,
          fontWeight: FontWeightHelper.bold,
        ),
      ),
      page: const AddProductScreen(),
    ),
    //Users
    DrawerItemModel(
      icon: const Icon(
        Icons.people_alt_rounded,
        color: Colors.white,
      ),
      title: TextApp(
        text: 'Users',
        theme: context.textStyle.copyWith(
          color: Colors.white,
          fontSize: 17.sp,
          fontFamily: FontFamilyHelper.poppinsEnglish,
          fontWeight: FontWeightHelper.bold,
        ),
      ),
      page: const UserScreen(),
    ),
    //Notifications
    DrawerItemModel(
      icon: const Icon(
        Icons.notifications_active,
        color: Colors.white,
      ),
      title: TextApp(
        text: 'Notifications',
        theme: context.textStyle.copyWith(
          color: Colors.white,
          fontSize: 17.sp,
          fontFamily: FontFamilyHelper.poppinsEnglish,
          fontWeight: FontWeightHelper.bold,
        ),
      ),
      page: const AddNotificationScreen(),
    ),
    //LogOut
    DrawerItemModel(
      icon: const Icon(
        Icons.exit_to_app,
        color: Colors.white,
      ),
      title: const Text(
        'Logout',
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'Poppins',
          fontWeight: FontWeightHelper.bold,
          fontSize: 17,
        ),
      ),
      page: const UserScreen(),
      onTap: () async {
        CustomDialog.twoButtonDialog(
          context: context,
          textBody: 'Do you want log out?',
          textButton1: 'Yes',
          textButton2: 'No',
          isLoading: false,
          onPressed: () async {
            final navigator = Navigator.of(context);
            await SharedPref().removePreference(prefKeys.accessToken);
            await SharedPref().removePreference(prefKeys.userId);
            await SharedPref().removePreference(prefKeys.userRole);
            await navigator.pushNamedAndRemoveUntil(
              AppRoutes.login,
              (route) => false,
            );
          },
        );
      },
    ),
  ];
}

class DrawerItemModel {
  DrawerItemModel({
    required this.icon,
    required this.title,
    required this.page,
    this.onTap,
  });

  final Icon icon;
  final Widget title;
  final Widget page;
  final VoidCallback? onTap;
}
