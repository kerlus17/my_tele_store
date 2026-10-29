import 'package:tele_store/core/serves/graphql/api_result.dart';
import 'package:tele_store/core/utils/app_strings.dart';
import 'package:tele_store/features/customer/product_details/data/data_source/product_details_data_source.dart';
import 'package:tele_store/features/customer/product_details/data/models/product_details_response.dart';

class ProductDetailsRepo {
  ProductDetailsRepo(this._dataSource);

  final ProductDetailsDataSource _dataSource;

  Future<ApiResult<ProductDetailsResponse>> productDetails(
      {required int id}) async {
    try {
      final response = await _dataSource.productDetails(id: id);
      return ApiResult.success(response);
    } catch (e) {
      return const ApiResult.failure(errmsg);
    }
  }
}