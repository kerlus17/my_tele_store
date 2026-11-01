import 'package:tele_store/core/serves/graphql/api_result.dart';
import 'package:tele_store/core/utils/app_strings.dart';
import 'package:tele_store/features/admin/add_product/data/models/get_all_product_response.dart';
import 'package:tele_store/features/customer/search/data/data_source/search_data_source.dart';
import 'package:tele_store/features/customer/search/data/models/search_request_body.dart';

class SearchRepo {
  const SearchRepo(this._dataSource);

  final SearchDataSource _dataSource;

  Future<ApiResult<GetAllProductResponse>> searchProduct({
    required SearchRequestBody body,
  }) async {
    try {
      final response = await _dataSource.searchProduct(body: body);
      return ApiResult.success(response);
    } catch (e) {
      return const ApiResult.failure(errmsg);
    }
  }
}
