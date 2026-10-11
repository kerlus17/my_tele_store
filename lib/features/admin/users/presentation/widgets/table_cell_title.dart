import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tele_store/core/common/widgets/custom_text.dart';
import 'package:tele_store/core/extentions/context_extension.dart';
import 'package:tele_store/core/style/fonts/font_family_helper.dart';
import 'package:tele_store/core/style/fonts/font_weight_helper.dart';

class TableCellTitle extends StatelessWidget {
  const TableCellTitle({required this.icon, required this.title, super.key});
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 8.w,
        vertical: 8.h,
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 20,
          ),
          SizedBox(
            width: 5.w,
          ),
          TextApp(
            text: title,
            theme: context.textStyle.copyWith(
              fontSize: 12.sp,
              fontWeight: FontWeightHelper.medium,
              fontFamily: FontFamilyHelper.poppinsEnglish,
            ),
          ),
        ],
      ),
    );
  }
}
