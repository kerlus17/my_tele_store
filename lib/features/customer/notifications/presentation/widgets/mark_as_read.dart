import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tele_store/core/common/widgets/custom_text.dart';
import 'package:tele_store/core/extentions/context_extension.dart';
import 'package:tele_store/core/style/fonts/font_weight_helper.dart';
import 'package:tele_store/features/customer/notifications/presentation/bloc/mark_as_read/mark_as_read_bloc.dart';

class MarkAsRead extends StatelessWidget {
  const MarkAsRead({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MarkAsReadBloc, MarkAsReadState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () {
            return GestureDetector(
              onTap: () {
                context.read<MarkAsReadBloc>().add(
                  MarkAsReadEvent.markAsRead(),
                );
              },
              child: TextApp(
                text: 'mark as read',
                theme: context.textStyle.copyWith(
                  fontSize: 20.sp,
                  fontWeight: FontWeightHelper.bold,
                  color: context.color.bluePinkLight,
                ),
              ),
            );
          },
          loading: () {
            return GestureDetector(
              onTap: () {},
              child: TextApp(
                text: 'mark as read',
                theme: context.textStyle.copyWith(
                  fontSize: 20.sp,
                  fontWeight: FontWeightHelper.bold,
                  color: context.color.bluePinkLight,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
