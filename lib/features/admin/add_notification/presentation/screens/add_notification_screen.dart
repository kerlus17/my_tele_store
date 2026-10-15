import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tele_store/core/common/widgets/admin_app_bar.dart';
import 'package:tele_store/core/di/injection_container.dart';
import 'package:tele_store/core/style/colors/colors_dark.dart';
import 'package:tele_store/features/admin/add_notification/presentation/bloc/add_notification/add_notification_bloc.dart';
import 'package:tele_store/features/admin/add_notification/presentation/bloc/get_all_notification_admin/get_all_notification_admin_bloc.dart';
import 'package:tele_store/features/admin/add_notification/presentation/bloc/send_notification/send_notification_bloc.dart';
import 'package:tele_store/features/admin/add_notification/presentation/refactor/add_notification_body.dart';

class AddNotificationScreen extends StatelessWidget {
  const AddNotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              sl<GetAllNotificationAdminBloc>()
                ..add(GetAllNotificationAdminEvent.fetchAll(loading: true)),
        ),
        BlocProvider(create: (context) => sl<AddNotificationBloc>()),
        BlocProvider(create: (context) => sl<SendNotificationBloc>()),
      ],
      child: Scaffold(
        backgroundColor: ColorsDark.mainColor,
        appBar: AdminAppBar(
          title: 'notifications',
          isMain: true,
          backgroundColor: ColorsDark.mainColor,
        ), // AdminAppBar
        body: const AddNotificationBody(),
      ),
    );
  }
}
