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
    return Padding(
      padding: EdgeInsetsGeometry.only(right: 15.w, left: 15.w, top: 13.h),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return CategoriesItem(
            image: categoryList[index].image ?? "",
            title: categoryList[index].name ?? "",
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 15.w,
          );
        },
        itemCount: categoryList.length,
      ),
    );
  }
}
