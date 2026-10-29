import 'package:tele_store/core/serves/graphql/api_result.dart';
import 'package:tele_store/core/utils/app_strings.dart';
import 'package:tele_store/features/admin/add_product/data/models/get_all_product_response.dart';
import 'package:tele_store/features/customer/products_view_all/data/data_source/products_viewall_datasource.dart';

class ProductsViewAllRepo {
  ProductsViewAllRepo(this._dataSource);

  final ProductsViewAllDataSource _dataSource;

  // Get Banners
  Future<ApiResult<GetAllProductResponse>> getProductsViewAll({
    required int offset,
  }) async {
    try {
      final response = await _dataSource.getProductsViewAll(offset: offset);
      return ApiResult.success(response);
    } catch (e) {
      return const ApiResult.failure(errmsg);
    }
  }
}
