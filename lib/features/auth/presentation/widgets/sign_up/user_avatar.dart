import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tele_store/core/app/upload_image/cubit/cubit/upload_image_cubit.dart';
import 'package:tele_store/core/common/animation/animate_do.dart';
import 'package:tele_store/core/common/toast/show_toast.dart';
import 'package:tele_store/core/extentions/context_extension.dart';
import 'package:tele_store/core/style/images/app_images.dart';
import 'package:tele_store/core/utils/app_strings.dart';
import 'package:tele_store/language/lang_keys.dart';

class UserAvatarImage extends StatelessWidget {
  const UserAvatarImage({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomFadeInDown(
      duration: 500,
      child: BlocConsumer<UploadImageCubit, UploadImageState>(
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
                message: context.translate(LangKeys.imageRemoved),
                context: context,
              );
            },
            error: (error) {
              ShowToast.showToastErrorTop(context: context, message: error);
            },
          );
        },
        builder: (context, state) {
          final isUploadedImage = context
              .read<UploadImageCubit>()
              .getImageUrl
              .isNotEmpty;
          return state.maybeWhen(
            loading: () {
              return CircleAvatar(
                radius: 38,
                backgroundImage: const AssetImage(AppImages.userAvatar),
                child: Center(
                  child: CircularProgressIndicator(
                    color: context.color.mainColor,
                  ), // CircularProgressIndicator
                ), // Center
              ); // CircleAvatar
            },
            orElse: () {
              return CircleAvatar(
                radius: 38,
                backgroundImage: isUploadedImage
                    ? NetworkImage(context.read<UploadImageCubit>().getImageUrl)
                          as ImageProvider
                    : AssetImage(AppImages.userAvatar),
                backgroundColor: Colors.black.withOpacity(0.2),
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Container(
                      height: 100.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: isUploadedImage
                            ? Colors.transparent
                            : Colors.black.withOpacity(0.4),
                      ),
                    ),

                    if (isUploadedImage)
                      Positioned(
                        top: -15,
                        right: -15,
                        child: IconButton(
                          onPressed: () {
                            context.read<UploadImageCubit>().removeImage();
                          },
                          icon: const Icon(
                            Icons.delete,
                            color: Colors.red,
                          ), // Icon
                        ), // IconButton
                      )
                    else
                      IconButton(
                        onPressed: () {
                          context.read<UploadImageCubit>().uploadImage();
                        },
                        icon: const Icon(
                          Icons.add_a_photo,
                          color: Colors.white,
                        ),
                      ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
