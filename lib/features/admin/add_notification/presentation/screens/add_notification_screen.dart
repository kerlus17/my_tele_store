import 'package:flutter/material.dart';
import 'package:tele_store/core/common/widgets/admin_app_bar.dart';
import 'package:tele_store/core/style/colors/colors_dark.dart';
import 'package:tele_store/core/serves/push_notifications/firebase_claud_messenging.dart';
import 'package:tele_store/features/admin/add_notification/presentation/refactor/add_notification_body.dart';
class AddNotificationScreen extends StatelessWidget {
  const AddNotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: ColorsDark.mainColor,
      appBar: AdminAppBar(
        title: 'notifications',
        isMain: true,
        backgroundColor: ColorsDark.mainColor,
      ), // AdminAppBar
      body: const AddNotificationBody(), 
    ); 
  
  }
}