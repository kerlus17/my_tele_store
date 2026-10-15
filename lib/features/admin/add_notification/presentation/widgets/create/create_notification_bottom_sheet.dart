import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tele_store/core/common/toast/show_toast.dart';
import 'package:tele_store/core/common/widgets/custom_button.dart';
import 'package:tele_store/core/common/widgets/custom_text.dart';
import 'package:tele_store/core/common/widgets/custom_text_field.dart';
import 'package:tele_store/core/extentions/context_extension.dart';
import 'package:tele_store/core/style/colors/colors_dark.dart';
import 'package:tele_store/core/style/fonts/font_family_helper.dart';
import 'package:tele_store/core/style/fonts/font_weight_helper.dart';
import 'package:tele_store/features/admin/add_notification/data/models/add_notification_model.dart';
import 'package:tele_store/features/admin/add_notification/presentation/bloc/add_notification/add_notification_bloc.dart';

class CreateNotificationBottomSheet extends StatefulWidget {
  const CreateNotificationBottomSheet({super.key});

  @override
  State<CreateNotificationBottomSheet> createState() =>
      _CreateNotificationBottomSheetState();
}

class _CreateNotificationBottomSheetState
    extends State<CreateNotificationBottomSheet> {
  TextEditingController titleController = TextEditingController();
  TextEditingController bodyController = TextEditingController();
  TextEditingController idProductController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    titleController.dispose();
    bodyController.dispose();
    idProductController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(vertical: 20.h),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: TextApp(
                text: 'Add Notifications',
                theme: context.textStyle.copyWith(
                  fontSize: 20.sp,
                  fontWeight: FontWeightHelper.bold,
                  fontFamily: FontFamilyHelper.poppinsEnglish,
                ),
              ),
            ),
            SizedBox(height: 20.h),
            TextApp(
              text: 'Enter the Notification title',
              theme: context.textStyle.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeightHelper.medium,
                fontFamily: FontFamilyHelper.poppinsEnglish,
              ),
            ),
            CustomTextField(
              controller: titleController,
              hintText: 'Title',
              validator: (value) {
                if (value == null || value.isEmpty || value.length < 2) {
                  return 'Please Selected Your Title Name';
                }
                return null;
              },
            ),
            SizedBox(height: 20.h),
            TextApp(
              text: 'Enter the Notification body',
              theme: context.textStyle.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeightHelper.medium,
                fontFamily: FontFamilyHelper.poppinsEnglish,
              ),
            ),
            CustomTextField(
              controller: bodyController,
              hintText: 'Body',
              validator: (value) {
                if (value == null || value.isEmpty || value.length < 2) {
                  return 'Please enter a valid notification body';
                }
                return null;
              },
            ),
            SizedBox(height: 20.h),
            TextApp(
              text: 'Enter the Product ID',
              theme: context.textStyle.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeightHelper.medium,
                fontFamily: FontFamilyHelper.poppinsEnglish,
              ),
            ),
            CustomTextField(
              controller: idProductController,
              hintText: 'Product ID',
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty || value.length < 2) {
                  return 'Please enter a valid product ID';
                }
                return null;
              },
            ),
            SizedBox(height: 20.h),
            BlocConsumer<AddNotificationBloc, AddNotificationState>(
              listener: (context, state) {
                state.whenOrNull(
                  error: (message) {
                    ShowToast.showToastErrorTop(
                      context: context,
                      message: message,
                    );
                    context.pop();
                  },
                  success: () {
                    ShowToast.showToastSuccessTop(
                      context: context,
                      message: "create notification done",
                    );
                    context.pop();
                  },
                );
              },
              builder: (context, state) {
                return state.maybeWhen(
                  loading: () {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50.h,
                      decoration: BoxDecoration(
                        color: ColorsDark.blueDark,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: CircularProgressIndicator(
                          color: ColorsDark.white,
                        ),
                      ),
                    );
                  },
                  orElse: () {
                    return CustomButton(
                      onPressed: () {
                        _validAddNotification(context);
                      },
                      backgroundColor: ColorsDark.white,
                      lastRadius: 20,
                      threeRadius: 20,
                      textColor: ColorsDark.blueDark,
                      text: 'Add a Notification',
                      width: MediaQuery.of(context).size.width,
                      height: 50.h,
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void _validAddNotification(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      final title = titleController.text.trim();
      final body = bodyController.text.trim();
      final productId = int.tryParse(idProductController.text.trim()) ?? 0;

      final notification = AddNotificationModel(
        title: title,
        body: body,
        idProduct: productId,
        createdAt: DateTime.now(),
      );

      context.read<AddNotificationBloc>().add(
        AddNotificationEvent.addNewNotification(notification: notification),
      );
    }
  }
}
