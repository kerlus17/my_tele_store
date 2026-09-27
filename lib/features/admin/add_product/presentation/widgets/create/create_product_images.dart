import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tele_store/core/app/upload_image/cubit/cubit/upload_image_cubit.dart';
import 'package:tele_store/core/common/toast/show_toast.dart';
import 'package:tele_store/core/extentions/context_extension.dart';
import 'package:tele_store/language/lang_keys.dart';

class CreateProductImages extends StatelessWidget {
  const CreateProductImages({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 3,
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
              loadingIndex: (index) {
                if (index == index) {
                  return Container(
                      height: 90.h,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(15),
                      ), // BoxDecoration
                      child: const Center(
                        child: CircularProgressIndicator(
                          color: Colors.white,
                        ),
                      ));
                }
                return _selectyourProductImage(
                  index: index,
                  ontap: () {},
                );
              },
              orElse: () {
                return _selectyourProductImage(
                  index: index,
                  ontap: () {
                    context
                        .read<UploadImageCubit>()
                        .uploadImageList(index: index);
                  },
                );
              },
            );
          },
        );
      },
      separatorBuilder: (context, index) => SizedBox(height: 6.h),
    );
  }
}

class _selectyourProductImage extends StatelessWidget {
  const _selectyourProductImage({
    required this.index,
    required this.ontap,
    super.key,
  });
  final int index;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return context.read<UploadImageCubit>().imgList[index].isNotEmpty
        ? InkWell(
            onTap: ontap,
            child: Container(
              height: 90.h,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: NetworkImage(context
                          .read<UploadImageCubit>()
                          .imgList[index]))), // BoxDecoration
            ),
          )
        : InkWell(
            onTap: ontap,
            child: Container(
              height: 90.h,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.8),
                borderRadius: BorderRadius.circular(15),
              ), // BoxDecoration
              child: const Icon(
                Icons.add_a_photo_outlined,
                size: 50,
                color: Colors.white,
              ),
            ),
          );
  }
}
