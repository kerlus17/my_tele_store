import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tele_store/core/app/upload_image/cubit/cubit/upload_image_cubit.dart';
import 'package:tele_store/core/common/toast/show_toast.dart';
import 'package:tele_store/core/extentions/context_extension.dart';
import 'package:tele_store/language/lang_keys.dart';

class CategoryUploadImage extends StatelessWidget {
  const CategoryUploadImage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UploadImageCubit, UploadImageState>(
      listener: (context, state) {
        state.whenOrNull(
          success: () {
            ShowToast.showToastSuccessTop(
              message: context.translate(LangKeys.imageUploaded),
              context: context,
            );
          },
          removeImage: (removeImage) {
            ShowToast.showToastSuccessTop(
              context: context,
              message: context.translate(LangKeys.imageRemoved),
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
          loading: () {
            return InkWell(
              onTap: () {
                context.read<UploadImageCubit>().uploadImage();
              },
              child: Container(
                height: 120.h,
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
              ),
            );
          },
          orElse: () {
            final cubit = context.read<UploadImageCubit>();

            if (cubit.getImageUrl.isNotEmpty) {
              return Container(
                height: 120.h,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: NetworkImage(cubit.getImageUrl),
                    fit: BoxFit.fill,
                  ),
                ),
              );
            } else {
              return InkWell(
                onTap: () {
                  context.read<UploadImageCubit>().uploadImage();
                },
                child: Container(
                  height: 120.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.add_a_photo_outlined,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                ),
              );
            }
          },
        );
      },
    );
  }
}
