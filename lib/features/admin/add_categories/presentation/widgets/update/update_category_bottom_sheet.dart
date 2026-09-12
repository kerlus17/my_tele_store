import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tele_store/core/app/upload_image/cubit/cubit/upload_image_cubit.dart';
import 'package:tele_store/core/common/toast/show_toast.dart';
import 'package:tele_store/core/common/widgets/custom_button.dart';
import 'package:tele_store/core/common/widgets/custom_text.dart';
import 'package:tele_store/core/common/widgets/custom_text_field.dart';
import 'package:tele_store/core/extentions/context_extension.dart';
import 'package:tele_store/core/style/colors/colors_dark.dart';
import 'package:tele_store/core/style/fonts/font_family_helper.dart';
import 'package:tele_store/core/style/fonts/font_weight_helper.dart';
import 'package:tele_store/features/admin/add_categories/data/models/update_category_request_body.dart';
import 'package:tele_store/features/admin/add_categories/presentation/bloc/update_category/update_category_bloc.dart';
import 'package:tele_store/features/admin/add_categories/presentation/widgets/update/update_upload_image.dart';

class UpdateCategoryBottomSheet extends StatefulWidget {
  const UpdateCategoryBottomSheet({
    required this.categoryId,
    required this.name,
    required this.imgUrl,
    super.key,
  });
  final String imgUrl;
  final String name;
  final String categoryId;

  @override
  State<UpdateCategoryBottomSheet> createState() =>
      _CreateCategoryBottomSheetWidgetState();
}

class _CreateCategoryBottomSheetWidgetState
    extends State<UpdateCategoryBottomSheet> {
  final formKey = GlobalKey<FormState>();
  TextEditingController nameCategoryController = TextEditingController();

  @override
  void dispose() {
    nameCategoryController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    nameCategoryController.text = widget.name;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Center(
              child: TextApp(
                text: 'Update Category',
                theme: context.textStyle.copyWith(
                  fontSize: 20.sp,
                  fontWeight: FontWeightHelper.bold,
                  fontFamily: FontFamilyHelper.poppinsEnglish,
                ),
              ),
            ),
            SizedBox(height: 20.h),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextApp(
                  text: 'Add a photo',
                  theme: context.textStyle.copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeightHelper.medium,
                    fontFamily: FontFamilyHelper.poppinsEnglish,
                  ),
                ),
                CustomButton(
                  onPressed: () {},
                  backgroundColor: Colors.red,
                  lastRadius: 10,
                  threeRadius: 10,
                  text: 'Remove',
                  width: 120.w,
                  height: 35.h,
                ),
              ],
            ),
            SizedBox(height: 10.h),

            UpdateUploadImage(
              imgUrl: widget.imgUrl,
            ),
            SizedBox(height: 20.h),

            TextApp(
              text: 'Enter the Category Name',
              theme: context.textStyle.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeightHelper.medium,
                fontFamily: FontFamilyHelper.poppinsEnglish,
              ),
            ),
            SizedBox(height: 10.h),

            // Text Field
            CustomTextField(
              controller: nameCategoryController,
              keyboardType: TextInputType.text,
              hintText: 'Category Name',
              validator: (value) {
                if (value == null || value.isEmpty || value.length < 2) {
                  return 'Please Select Your Category Name';
                }
                return null;
              },
            ),
            SizedBox(height: 20.h),

            // Update Button
            BlocConsumer<UpdateCategoryBloc, UpdateCategoryState>(
              listener: (context, state) {
                state.whenOrNull(
                  success: () {
                    context.pop();
                    ShowToast.showToastSuccessTop(
                      context: context,
                      message: '${nameCategoryController.text} Update Success',
                      seconds: 1,
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
                return state.maybeWhen(
                  loading: () {
                    return Container(
                      height: 50.h,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ), // BoxDecoration
                      child: const Center(
                        child: CircularProgressIndicator(
                          color: ColorsDark.blueDark,
                        ), // CircularProgressIndicator
                      ), // Center
                    ); // Container
                  },
                  orElse: () {
                    return CustomButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          context.read<UpdateCategoryBloc>().add(
                            UpdateCategoryEvent.updateOldCategory(
                              body: UpdateCategoryRequestBody(
                                id: widget.categoryId,
                                image:
                                    context
                                        .read<UploadImageCubit>()
                                        .getImageUrl
                                        .isEmpty
                                    ? widget.imgUrl
                                    : context
                                          .read<UploadImageCubit>()
                                          .getImageUrl,
                                name: nameCategoryController.text.trim(),
                              ),
                            ),
                          );
                        }
                      },
                      backgroundColor: ColorsDark.white,
                      lastRadius: 20,
                      threeRadius: 20,
                      textColor: ColorsDark.blueDark,
                      text: 'update category',
                      width: MediaQuery.of(context).size.width,
                      height: 50.h,
                    );
                  },
                );
              },
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
