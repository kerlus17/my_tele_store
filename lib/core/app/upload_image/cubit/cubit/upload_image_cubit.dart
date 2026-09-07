import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tele_store/core/app/upload_image/repos/upload_image_repo.dart';
import 'package:tele_store/core/serves/graphql/api_result.dart';
import 'package:tele_store/core/utils/image_pick.dart';

part 'upload_image_state.dart';
part 'upload_image_cubit.freezed.dart';

class UploadImageCubit extends Cubit<UploadImageState> {
  UploadImageCubit(this._repo) : super(const UploadImageState.initial());
  final UploadImageRepo _repo;

  String getImageUrl = '';

  Future<void> uploadImage() async {
    final pickedImage = await PickImageUtils().pickImage();
    if (pickedImage == null) return;

    emit(const UploadImageState.loading());
    final result = await _repo.uploadimage(pickedImage);

    result.when(
      success: (image) {
        getImageUrl = image.location ?? '';
        emit(const UploadImageState.success());
      },
      failure: (error) {
        emit(UploadImageState.error(error: error));
      },
    );
  }





  void removeImage() {
    getImageUrl = '';
    emit(UploadImageState.removeImage(imgUrl: getImageUrl));
  }
}
