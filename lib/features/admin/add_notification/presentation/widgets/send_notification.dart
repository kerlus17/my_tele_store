import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tele_store/core/common/toast/show_toast.dart';
import 'package:tele_store/features/admin/add_notification/data/models/add_notification_model.dart';
import 'package:tele_store/features/admin/add_notification/presentation/bloc/send_notification/send_notification_bloc.dart';

class SendNotification extends StatelessWidget {
  const SendNotification({
    required this.indexId,
    required this.notification,
    super.key,
  });
  final AddNotificationModel notification;
  final int indexId;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SendNotificationBloc, SendNotificationState>(
      listener: (context, state) {
        state.whenOrNull(
          success: () {
            ShowToast.showToastSuccessTop(
              context: context,
              message: 'Your notifications have been send successfully',
            );
            
          },
          error: (error) {
            ShowToast.showToastErrorTop(
              context: context,
              message: error,
            );
          },
        );
      },
      builder: (context, state) {
        return state.maybeMap(
          loading: (index) {
            if ( index.indexId ==  indexId) {
              return SizedBox(
                height: 25.h,
                width: 25.w,
                child: const Center(
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                ),
              );
            } else {
              return Icon(
                Icons.send,
                color: Colors.green,
              );
            }
          },
          orElse: () {
            return InkWell(
              onTap: () {
                context.read<SendNotificationBloc>().add(
                  SendNotificationEvent.sendNotifications(
                    title: notification.title,
                    body: notification.body,
                    productId: notification.idProduct,
                    indexId: indexId,
                  ),
                );
              },
              child: Icon(
                Icons.send,
                color: Colors.green,
              ),
            );
          },
        );
      },
    );
  }
}
