import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tele_store/core/style/colors/colors_dark.dart';
import 'package:tele_store/features/admin/add_notification/data/models/add_notification_model.dart';
import 'package:tele_store/features/admin/add_notification/presentation/bloc/add_notification/add_notification_bloc.dart';
import 'package:tele_store/features/admin/add_notification/presentation/bloc/get_all_notification_admin/get_all_notification_admin_bloc.dart';

class DeleteNotification extends StatelessWidget {
  const DeleteNotification({required this.notification, super.key});
  final AddNotificationModel notification;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddNotificationBloc, AddNotificationState>(
      listener: (context, state) {
        state.whenOrNull(
          success: () {
            context.read<GetAllNotificationAdminBloc>().add(
              GetAllNotificationAdminEvent.fetchAll(loading: false),
            );
          },
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          loading: () {
            return SizedBox(
              height: 15.h,
              width: 15.w,
              child: const CircularProgressIndicator(
                color: ColorsDark.white,
              ),
            );
          },
          orElse: () {
            return InkWell(
              onTap: () {
                context.read<AddNotificationBloc>().add(
                  DeleteNNotificationEvent(notification: notification),
                );
              },
              child: Icon(
                Icons.delete,
                color: Colors.red,
              ),
            );
          },
        );
      },
    );
  }
}
