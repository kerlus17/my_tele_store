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
  List<String> imgList = ['', '', ''];
  List<String> imgUpdateList = [];

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

  Future<void> uploadImageList({required int index}) async {
    final pickedImage = await PickImageUtils().pickImage();
    if (pickedImage == null) return;

    emit(UploadImageState.loadingIndex(index: index));
    final result = await _repo.uploadimage(pickedImage);

    result.when(
      success: (image) {
        imgList
          ..removeAt(index)
          ..insert(index, image.location ?? '');
        emit(const UploadImageState.success());
      },
      failure: (error) {
        emit(UploadImageState.error(error: error));
      },
    );
  }

  Future<void> uploadUpdateImageList(
      {required int index, required List<String> imgProductList}) async {
    final pickedImage = await PickImageUtils().pickImage();
    if (pickedImage == null) return;

    emit(UploadImageState.loadingIndex(index: index));
    final result = await _repo.uploadimage(pickedImage);

    result.when(
      success: (image) {
        imgUpdateList = imgProductList;
        imgProductList
          ..removeAt(index)
          ..insert(index, image.location ?? '');
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
