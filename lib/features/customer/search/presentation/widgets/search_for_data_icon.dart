import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tele_store/core/common/widgets/custom_text.dart';
import 'package:tele_store/core/extentions/context_extension.dart';
import 'package:tele_store/core/style/fonts/font_weight_helper.dart';

class SearchFormDataIcon extends StatelessWidget {
  const SearchFormDataIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          Icons.search_sharp,
          color: context.color.textColor,
          size: 150,
        ), // Icon
        SizedBox(height: 10.h),
        TextApp(
          text: 'Search For Data',
          theme: context.textStyle.copyWith(
            fontWeight: FontWeightHelper.bold,
            fontSize: 18.sp,
          ),
        ),
      ],
    ); 
  }
}
