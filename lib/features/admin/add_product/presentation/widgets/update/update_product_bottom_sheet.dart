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
import 'package:tele_store/features/admin/add_product/data/models/update_product_request_body.dart';
import 'package:tele_store/features/admin/add_product/presentation/bloc/update_product/update_product_bloc.dart';
import 'package:tele_store/features/admin/add_product/presentation/widgets/update/update_product_image.dart';

class UpdateProductBottomSheet extends StatefulWidget {
  const UpdateProductBottomSheet(
      {required this.categoryId,
      required this.productId,
      required this.title,
      required this.price,
      required this.description,
      required this.categoryName,
      required this.imgList,
      super.key});
  final List<String> imgList;
  final String categoryName;
  final String categoryId;

  final String title;

  final String price;

  final String description;
  final String productId;

  @override
  State<UpdateProductBottomSheet> createState() =>
      _UpdateProductBottomSheetState();
}

class _UpdateProductBottomSheetState extends State<UpdateProductBottomSheet> {
  final fromKey = GlobalKey<FormState>();
  final TextEditingController _titlecontroller = TextEditingController();

  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  String? categoryValueName;
  double? categoryValueId;

  @override
  void initState() {
    categoryValueName = widget.categoryName;
    _titlecontroller.text = widget.title;
    _descriptionController.text = widget.description;
    _priceController.text = widget.price;

    super.initState();
  }

  @override
  void dispose() {
    _titlecontroller.dispose();
    _descriptionController.dispose();
    _priceController.dispose();
    categoryValueId = double.tryParse(widget.productId);
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
              //Title Update Product
              Center(
                child: TextApp(
                  text: 'Update Product',
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
              UpdateProductImage(imgList: widget.imgList),
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
                controller: _titlecontroller,
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
                        hintText: ' ',
                        items: [],
                        onChanged: (value) {},
                        value: '',
                      );
                    },
                    success: (categoriesModel) {
                      return CustomCreateDropDown(
                        hintText: '$categoryValueName',
                        items: categoriesModel.categoryDropDownList(),
                        onChanged: (value) {
                          setState(() {
                            categoryValueName = value;
                            final catgeoryIdString = categoriesModel
                                .categoriesGetAlls
                                .firstWhere((e) => e.name == value)
                                .id!;
                            categoryValueId = double.parse(catgeoryIdString);
                          });
                        },
                        value: categoryValueName,
                      );
                    },
                  );
                },
              ),
              SizedBox(height: 15.h),
              BlocConsumer<UpdateProductBloc, UpdateProductState>(
                listener: (context, state) {
                  state.whenOrNull(
                    success: () {
                      context.pop();
                      ShowToast.showToastSuccessTop(
                        context: context,
                        message: '${_titlecontroller.text} Update Success',
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
                  return state.maybeWhen(
                    orElse: () {
                      return CustomButton(
                        onPressed: () {
                          _validUpdateProduct(context);
                        },
                        backgroundColor: ColorsDark.white,
                        lastRadius: 20,
                        threeRadius: 20,
                        textColor: ColorsDark.blueDark,
                        text: 'Update Product',
                        width: MediaQuery.of(context).size.width,
                        height: 50.h,
                      );
                    },
                    loading: () {
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

  void _validUpdateProduct(BuildContext context) {
    if (fromKey.currentState!.validate()) {
      // update category

      context.read<UpdateProductBloc>().add(
            UpdateProductEvent.editProduct(
              body: UpdateProductRequestBody(
                categoryId: categoryValueId ?? 0,
                title: _titlecontroller.text.trim(),
                description: _descriptionController.text.trim(),
                price: double.parse(_priceController.text.trim()),
                imageList:
                    context.read<UploadImageCubit>().imgUpdateList.isEmpty
                        ? widget.imgList
                        : context.read<UploadImageCubit>().imgUpdateList,
                productId: widget.productId,
              ),
            ),
          );
    }
  }
}
