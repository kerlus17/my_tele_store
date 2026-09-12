import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tele_store/core/app/upload_image/cubit/cubit/upload_image_cubit.dart';
import 'package:tele_store/core/common/toast/show_toast.dart';
import 'package:tele_store/core/extentions/context_extension.dart';
import 'package:tele_store/language/lang_keys.dart';

class UpdateUploadImage extends StatelessWidget {
  const UpdateUploadImage({required this.imgUrl, super.key});

  final String imgUrl;

  @override
  Widget build(BuildContext context) {
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
        final cubit = context.read<UploadImageCubit>();
        return state.maybeWhen(
          loading: () {
            return Container(
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
            );
          },
          orElse: () {
            return InkWell(
              onTap: () {
                cubit.uploadImage();
              },
              child: Stack(
                children: [
                  Container(
                    height: 120.h,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                          cubit.getImageUrl.isEmpty
                              ? imgUrl
                              : cubit.getImageUrl,
                        ),
                      ),
                    ),
                  ),

                  if (cubit.getImageUrl.isEmpty)
                    Container(
                      height: 120.h,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(15),
                      ),
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
          },
        );
      },
    );
  }
}
