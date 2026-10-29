import 'package:tele_store/core/serves/graphql/api_result.dart';
import 'package:tele_store/core/utils/app_strings.dart';
import 'package:tele_store/features/admin/add_product/data/models/get_all_product_response.dart';
import 'package:tele_store/features/customer/category/data/data_source/category_data_source.dart';

class CatgeoryRepo {
  const CatgeoryRepo(this._dataSource);

  final CatgeoryDataSource _dataSource;

  // Get Category
  Future<ApiResult<GetAllProductResponse>> getCategory({
    required int categoryId,
  }) async {
    try {
      final response = await _dataSource.getCategory(categoryId: categoryId);
      return ApiResult.success(response);
    } catch (e) {
      return const ApiResult.failure(errmsg);
    }
  }
}
