import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tele_store/core/common/widgets/custom_product_item.dart';
import 'package:tele_store/core/common/widgets/custom_text.dart';
import 'package:tele_store/core/extentions/context_extension.dart';
import 'package:tele_store/core/style/fonts/font_weight_helper.dart';
import 'package:tele_store/features/customer/favourite/presentation/cubit/favourite/favourite_cubit.dart';

class FavouriteBody extends StatelessWidget {
  const FavouriteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.w),
      child: BlocBuilder<FavouriteCubit, FavouriteState>(
        builder: (context, state) {
          if (context.read<FavouriteCubit>().getAllFavourites.isEmpty) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.favorite_outline,
                  color: context.color.textColor,
                  size: 150,
                ), // Icon
                TextApp(
                  text: 'Choose Your Favorite Products',
                  theme: context.textStyle.copyWith(
                    fontWeight: FontWeightHelper.bold,
                    fontSize: 16.sp,
                  ),
                ), 
              ],
            ); 
          }
          return GridView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            itemCount: context.read<FavouriteCubit>().getAllFavourites.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 15,
              childAspectRatio: 165 / 250,
            ),
            itemBuilder: (context, index) {
              final list = context.read<FavouriteCubit>().getAllFavourites;
              return CustomProductItem(
                price: double.parse(list[index].price),
                categoryName: list[index].categoryName,
                title: list[index].title,
                imgUrl: list[index].image,
                productid: int.parse(list[index].id),
              );
            },
          );
        },
      ),
    );
  }
}
