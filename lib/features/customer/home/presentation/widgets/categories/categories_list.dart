import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tele_store/features/admin/add_categories/data/models/get_all_categories_response.dart';
import 'package:tele_store/features/customer/home/presentation/widgets/categories/categories_items.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({required this.categoryList, super.key});

  final List<CategoriesGetAllModel> categoryList;

  @override
  Widget build(BuildContext context) {
    final validCategories = categoryList
        .where((category) {
          final img = category.image;
          return img != null &&
              img.trim().isNotEmpty &&
              (img.startsWith('http://') ||
                  img.startsWith('https://') ||
                  img.startsWith('assets/'));
        })
        .toList()
        .reversed
        .toList();

    if (validCategories.isEmpty) {
      return const SizedBox.shrink();
    }
    return SizedBox(
      height: 130.h,
      child: Padding(
        padding: EdgeInsets.only(right: 15.w, left: 15.w, top: 13.h),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemCount: validCategories.length,
          itemBuilder: (context, index) {
            return CategoriesItem(
              id: int.parse(validCategories[index].id ?? '0'),
              image: validCategories[index].image ?? "",
              title: validCategories[index].name ?? "",
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 15.w,
            );
          },
        ),
      ),
    );
  }
}
