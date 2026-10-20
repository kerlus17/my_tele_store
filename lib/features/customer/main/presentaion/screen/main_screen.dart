import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tele_store/core/di/injection_container.dart';
import 'package:tele_store/core/enums/nav_bar_enum.dart';
import 'package:tele_store/core/style/theme/assets_extension.dart';
import 'package:tele_store/features/customer/categories/presentation/screen/categories_screen.dart';
import 'package:tele_store/features/customer/favourite/presentation/screen/favourite_screen.dart';
import 'package:tele_store/features/customer/home/presentation/screen/home_screen.dart';
import 'package:tele_store/features/customer/main/presentaion/cubit/main_cubit.dart';
import 'package:tele_store/features/customer/main/presentaion/refactor/main_bottom_nav_bar.dart';
import 'package:tele_store/features/customer/main/presentaion/refactor/main_customer_app_bar.dart';
import 'package:tele_store/features/customer/profile/presentation/screen/profile_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainCustomerAppBar(),
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              Theme.of(context).extension<MyAssets>()!.homeBg!,
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: BlocBuilder<MainCubit, MainState>(
                builder: (context, state) {
                  final cubit = context.read<MainCubit>();
              
                  if (cubit.navBarEnum == NavBarEnum.categories) {
                    return const CategoriesScreen();
                  } else if (cubit.navBarEnum == NavBarEnum.favourite) {
                    return const FavouriteScreen();
                  } else if (cubit.navBarEnum == NavBarEnum.profile) {
                    return const ProfileScrren();
                  }
                  return HomeScreen();
                },
              ),
            ),
            
            MainBottomNavBar(),
          ],
        ),
      ),
    );
  }
}
