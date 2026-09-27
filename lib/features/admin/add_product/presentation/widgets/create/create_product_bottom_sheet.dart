import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tele_store/core/app/upload_image/cubit/cubit/upload_image_cubit.dart';
import 'package:tele_store/core/common/toast/show_toast.dart';
import 'package:tele_store/core/common/widgets/custom_button.dart';
import 'package:tele_store/core/common/widgets/custom_drop_down.dart';
import 'package:tele_store/core/common/widgets/custom_text.dart';
import 'package:tele_store/core/common/widgets/custom_text_field.dart';
import 'package:tele_store/core/extentions/context_extension.dart';
import 'package:tele_store/core/style/colors/colors_dark.dart';
import 'package:tele_store/core/style/fonts/font_family_helper.dart';
import 'package:tele_store/core/style/fonts/font_weight_helper.dart';
import 'package:tele_store/features/admin/add_categories/presentation/bloc/get_all_admin_categories/get_all_admin_categories_bloc.dart';
import 'package:tele_store/features/admin/add_product/data/models/create_product_request_body.dart';
import 'package:tele_store/features/admin/add_product/presentation/bloc/create_product/create_product_bloc.dart';
import 'package:tele_store/features/admin/add_product/presentation/widgets/create/create_product_images.dart';
import 'package:tele_store/language/lang_keys.dart';

class CreateProductBottomSheet extends StatefulWidget {
  const CreateProductBottomSheet({super.key});

  @override
  State<CreateProductBottomSheet> createState() =>
      _CreateProductBottomSheetState();
}

class _CreateProductBottomSheetState extends State<CreateProductBottomSheet> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  final fromKey = GlobalKey<FormState>();

  String? categoryName;
  double? categoryId;

  @override
  void dispose() {
    _titleController.dispose();
    _priceController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600.h,
      child: Form(
        key: fromKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: TextApp(
                  text: 'create Product',
                  theme: context.textStyle.copyWith(
                    fontSize: 20.sp,
                    fontWeight: FontWeightHelper.bold,
                    fontFamily: FontFamilyHelper.poppinsEnglish,
                  ),
                ), // TextApp
              ), // Center
              SizedBox(height: 20.h),
              TextApp(
                text: 'Update a photos',
                theme: context.textStyle.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeightHelper.medium,
                  fontFamily: FontFamilyHelper.poppinsEnglish,
                ),
              ),
              SizedBox(height: 15.h),
              CreateProductImages(),

              SizedBox(height: 15.h),
              TextApp(
                text: 'Title',
                theme: context.textStyle.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeightHelper.medium,
                  fontFamily: FontFamilyHelper.poppinsEnglish,
                ),
              ),
              SizedBox(height: 15.h),
              CustomTextField(
                controller: _titleController,
                keyboardType: TextInputType.emailAddress,
                hintText: 'Title',
                validator: (value) {
                  if (value == null || value.isEmpty || value.length < 2) {
                    return 'Please Selected Your Product Title';
                  }
                  return null;
                },
              ),
              SizedBox(height: 15.h),
              TextApp(
                text: 'Price',
                theme: context.textStyle.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeightHelper.medium,
                  fontFamily: FontFamilyHelper.poppinsEnglish,
                ),
              ),
              SizedBox(height: 15.h),
              CustomTextField(
                controller: _priceController,
                keyboardType: TextInputType.number,
                hintText: 'Price',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please Selected Your Product Price';
                  }
                  return null;
                },
              ),
              SizedBox(height: 15.h),

              TextApp(
                text: 'Description',
                theme: context.textStyle.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeightHelper.medium,
                  fontFamily: FontFamilyHelper.poppinsEnglish,
                ),
              ),
              SizedBox(height: 15.h),
              CustomTextField(
                controller: _descriptionController,
                maxLines: 4,
                keyboardType: TextInputType.multiline,
                hintText: 'Description',
                validator: (value) {
                  if (value == null || value.isEmpty || value.length < 2) {
                    return 'Please Selected Your Product description';
                  }
                  return null;
                },
              ),
              SizedBox(height: 15.h),
              TextApp(
                text: 'Category',
                theme: context.textStyle.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeightHelper.medium,
                  fontFamily: FontFamilyHelper.poppinsEnglish,
                ),
              ),
              SizedBox(height: 15.h),
              BlocBuilder<GetAllAdminCategoriesBloc,
                  GetAllAdminCategoriesState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () {
                      return CustomCreateDropDown(
                        hintText: 'select a category',
                        items: [],
                        onChanged: (value) {},
                        value: '',
                      );
                    },
                    success: (categoriesModel) {
                      return CustomCreateDropDown(
                        hintText: 'select a category',
                        items: categoriesModel.categoryDropDownList(),
                        onChanged: (value) {
                          setState(() {
                            categoryName = value;
                            final catgeoryIdString = categoriesModel
                                .categoriesGetAlls
                                .firstWhere((e) => e.name == value)
                                .id!;
                            categoryId = double.parse(catgeoryIdString);
                          });
                        },
                        value: categoryName,
                      );
                    },
                  );
                },
              ),
              SizedBox(height: 15.h),
              BlocConsumer<CreateProductBloc, CreateProductState>(
                listener: (context, state) {
                  state.whenOrNull(
                    success: () {
                      context.pop();

                      ShowToast.showToastSuccessTop(
                        context: context,
                        message: '${_titleController.text} Created Success',
                        seconds: 2,
                      );
                    },
                    error: (errorMesage) {
                      ShowToast.showToastErrorTop(
                        context: context,
                        message: errorMesage,
                      );
                    },
                  );
                },
                builder: (context, state) {
                  return state.maybeWhen(loading: () {
                    return CustomButton(
                      onPressed: () {},
                      lastRadius: 20,
                      threeRadius: 20,
                      text: 'create Product',
                      width: MediaQuery.of(context).size.width,
                      height: 50.h,
                      isLoading: true,
                    );
                  }, orElse: () {
                    return CustomButton(
                      onPressed: () {
                        _validCreateProductButton(context);
                      },
                      backgroundColor: ColorsDark.white,
                      lastRadius: 20,
                      threeRadius: 20,
                      textColor: ColorsDark.blueDark,
                      text: 'create Product',
                      width: MediaQuery.of(context).size.width,
                      height: 50.h,
                    );
                  });
                },
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ), // Form
    ); // SizedBox
  }

  void _validCreateProductButton(BuildContext context) {
    final isFormValid = fromKey.currentState?.validate() ?? false;

    final imageList = context.read<UploadImageCubit>().imgList;
    final hasValidImages = imageList.any((img) => img.trim().isNotEmpty);

    final isCategorySelected = categoryName != null;

    if (!isFormValid) {
      return;
    }

    if (!hasValidImages) {
      ShowToast.showToastErrorTop(
        context: context,
        message: context.translate(LangKeys.validPickImage),
      );
      return;
    }

    if (!isCategorySelected) {
      ShowToast.showToastErrorTop(
        context: context,
        message: 'Please select your category',
      );
      return;
    }

    context.read<CreateProductBloc>().add(
          CreateProductEvent.createNewProduct(
            body: CreateProductRequestBody(
              title: _titleController.text.trim(),
              images: imageList,
              categoryId: categoryId ?? 0,
              description: _descriptionController.text.trim(),
              price: double.tryParse(_priceController.text.trim()) ?? 0.0,
            ),
          ),
        );
  }
}
