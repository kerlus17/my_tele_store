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
import 'package:tele_store/features/admin/add_categories/data/models/create_category_request_body.dart';
import 'package:tele_store/features/admin/add_categories/presentation/bloc/craete_category/create_category_bloc.dart';
import 'package:tele_store/features/admin/add_categories/presentation/widgets/create/category_upload_image.dart';
import 'package:tele_store/language/lang_keys.dart';

class AddCategoryBottomSheet extends StatefulWidget {
  const AddCategoryBottomSheet({super.key});

  @override
  State<AddCategoryBottomSheet> createState() =>
      _CreateCategoryBottomSheetWidgetState();
}

class _CreateCategoryBottomSheetWidgetState
    extends State<AddCategoryBottomSheet> {
  final formKey = GlobalKey<FormState>();
  TextEditingController nameCategoryController = TextEditingController();

  @override
  void dispose() {
    nameCategoryController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Create Category Title
              Center(
                child: TextApp(
                  text: 'Create Category',
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

                  BlocBuilder<UploadImageCubit, UploadImageState>(
                    builder: (context, state) {
                      if (context
                          .read<UploadImageCubit>()
                          .getImageUrl
                          .isEmpty) {
                        return const SizedBox.shrink();
                      }

                      return CustomButton(
                        onPressed: () {
                          context.read<UploadImageCubit>().removeImage();
                        },
                        backgroundColor: Colors.red,
                        lastRadius: 10,
                        threeRadius: 10,
                        text: 'Remove',
                        width: 120.w,
                        height: 35.h,
                      );
                    },
                  ),
                ],
              ),
              SizedBox(height: 10.h),

              CategoryUploadImage(),
              SizedBox(height: 20.h),

              // Enter the category name title
              TextApp(
                text: 'Enter the Category Name',
                theme: context.textStyle.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeightHelper.medium,
                  fontFamily: FontFamilyHelper.poppinsEnglish,
                ),
              ),
              SizedBox(height: 10.h),

              // Name for category TextForm
              CustomTextField(
                controller: nameCategoryController,
                keyboardType: TextInputType.text,
                hintText: 'Category Name',
                validator: (value) {
                  if (value == null || value.isEmpty || value.length < 2) {
                    return 'Please Enter Your Category Name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20.h),

              // Create a new category Button
              BlocConsumer<CreateCategoryBloc, CreateCategoryState>(
                listener: (context, state) {
                  state.whenOrNull(
                    success: () {
                      context.pop();
                      ShowToast.showToastSuccessTop(
                        context: context,
                        message:
                            '${nameCategoryController.text} Created Success',
                        seconds: 2,
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
                    loading: (value) {
                      return Container(
                        height: 50.h,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(
                          child: CircularProgressIndicator(
                            color: ColorsDark.blueDark,
                          ),
                        ),
                      );
                    },

                    orElse: () {
                      return CustomButton(
                        onPressed: () {
                          _validCreateCategory(context);
                        },
                        backgroundColor: ColorsDark.white,
                        lastRadius: 20,
                        threeRadius: 20,
                        textColor: ColorsDark.blueDark,
                        text: 'Create a new category',
                        width: double.infinity,
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
      ),
    );
  }

  void _validCreateCategory(BuildContext context) {
    final imageUrl = context.read<UploadImageCubit>().getImageUrl;

    if (!formKey.currentState!.validate()) {
      return;
    }

    if (imageUrl.isEmpty) {
      ShowToast.showToastErrorTop(
        context: context,
        message: context.translate(LangKeys.validPickImage),
      );
      return;
    }

    context.read<CreateCategoryBloc>().add(
      CreateCategoryEvent.createCategory(
        body: CreateCategoryRequestBody(
          image: imageUrl,
          name: nameCategoryController.text.trim(),
        ),
      ),
    );
  }
}
