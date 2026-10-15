import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tele_store/core/common/bottom_sheet/custom_bottom_sheet.dart';
import 'package:tele_store/features/admin/add_notification/data/models/add_notification_model.dart';
import 'package:tele_store/features/admin/add_notification/presentation/bloc/get_all_notification_admin/get_all_notification_admin_bloc.dart';
import 'package:tele_store/features/admin/add_notification/presentation/widgets/edit/edit_notification_bottom_sheet.dart';
class EditNotification extends StatelessWidget {
  const EditNotification({required this.notification, super.key});
  final AddNotificationModel notification;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        CustomBottomSheet.showModalBottomSheetContainer(
          context: context,
          widget: EditNotificationBottomSheet(notification: notification),
          whenComplete: () {
            if (context.mounted) {
              context.read<GetAllNotificationAdminBloc>().add(
                    const GetAllNotificationAdminEvent.fetchAll(loading: true),
                  );
            }
          },
        );
      },
      child: const Icon(
        Icons.edit,
        color: Colors.yellow,
      ),
    );
  }
}