import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tele_store/core/app/upload_image/cubit/cubit/upload_image_cubit.dart';
import 'package:tele_store/core/common/toast/show_toast.dart';
import 'package:tele_store/core/extentions/context_extension.dart';
import 'package:tele_store/core/extentions/string_extension.dart';
import 'package:tele_store/language/lang_keys.dart';

class UpdateProductImage extends StatelessWidget {
  const UpdateProductImage({required this.imgList, super.key});
  final List<String> imgList;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: imgList.length,
      itemBuilder: (context, index) {
        return BlocConsumer<UploadImageCubit, UploadImageState>(
          listener: (context, state) {
            state.whenOrNull(
              success: () {
                ShowToast.showToastSuccessTop(
                  context: context,
                  message: context.translate(LangKeys.imageUploaded),
                );
              },
              error: (errorMessage) {
                ShowToast.showToastErrorTop(
                  context: context,
                  message: errorMessage,
                );
              },
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              loadingIndex: (indexId) {
                return Container(
                  height: 90.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Center(
                    child: CircularProgressIndicator(
                      color: Colors.white,
                    ),
                  ),
                );
              },
              orElse: () {
                return UpdateSelectedImageProduct(
                  imgList: imgList,
                  index: index,
                  ontap: () {
                    context.read<UploadImageCubit>().uploadUpdateImageList(
                        index: index, imgProductList: imgList);
                  },
                );
              },
            );
          },
        ); // Stack
      },
      separatorBuilder: (context, index) => SizedBox(height: 6.h),
    );
  }
}

class UpdateSelectedImageProduct extends StatelessWidget {
  const UpdateSelectedImageProduct({
    required this.index,
    required this.ontap,
    super.key,
    required this.imgList,
  });

  final List<String> imgList;
  final int index;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Stack(
        children: [
          // Image
          Container(
            height: 90.h,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.8),
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                  imgList[index].imageProductFormate(),
                ),
              ),
            ),
          ),
          //Icon Button
          Container(
            height: 90.h,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.3),
              borderRadius: BorderRadius.circular(15),
            ), // BoxDecoration
            child: const Center(
              child: Icon(
                Icons.add_a_photo_outlined,
                size: 50,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
