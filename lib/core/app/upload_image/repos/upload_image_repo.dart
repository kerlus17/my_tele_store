import 'package:image_picker/image_picker.dart';
import 'package:tele_store/core/app/upload_image/dataSource/upload_image_data_source.dart';
import 'package:tele_store/core/app/upload_image/model/upload_image_response.dart';
import 'package:tele_store/core/serves/graphql/api_result.dart';

class UploadImageRepo {
  const UploadImageRepo(this._dataSource);
  final UploadImageDataSource _dataSource;

  Future<ApiResult<UploadImageResponse>> uploadimage(XFile imagefile) async {
    try {
      final response = await _dataSource.uploadImage(imageFile: imagefile);
      return ApiResult.success(response);
    } catch (e) {
            return ApiResult.failure("please, try again we have error in add image");

    }
  }
}
