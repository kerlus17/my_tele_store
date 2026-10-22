import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tele_store/core/common/animation/animate_do.dart';
import 'package:tele_store/core/di/injection_container.dart';
import 'package:tele_store/core/extentions/context_extension.dart';
import 'package:tele_store/features/customer/home/presentation/bloc/get_all_categories/get_all_categories_bloc.dart';
import 'package:tele_store/features/customer/home/presentation/bloc/get_bunner/get_bunner_bloc.dart';
import 'package:tele_store/features/customer/home/presentation/refactor/home_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final scrollcontroller = ScrollController();
  @override
  void dispose() {
    scrollcontroller.dispose();
  }

  void scrollup() {
    scrollcontroller.animateTo(
      0,
      duration: Duration(seconds: 1),
      curve: Curves.easeIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              sl<GetBunnerBloc>()..add(const GetBunnerEvent.fetchBunner()),
        ),
        BlocProvider(
          create: (context) =>
              sl<GetAllCategoriesBloc>()
                ..add(const GetAllCategoriesEvent.fetchCategories()),
        ),
      ],

      child: Stack(
        children: [
          HomeBody(
            scrollController: scrollcontroller,
          ),
          CustomFadeInLeft(
            duration: 200,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: FloatingActionButton(
                  onPressed: () {
                    scrollup();
                  },
                  backgroundColor: context.color.bluePinkLight,
                  child: const Icon(
                    Icons.arrow_upward,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
