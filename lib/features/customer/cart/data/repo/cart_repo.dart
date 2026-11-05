import 'package:tele_store/core/serves/graphql/api_result.dart';
import 'package:tele_store/features/admin/add_product/data/models/get_all_product_response.dart';
import 'package:tele_store/features/customer/cart/data/data_source/cart_data_source.dart';

class cartRepo {
  const cartRepo(this._dataSource);

  final CartDataSource _dataSource;

  Future<ApiResult<void>> addProductToCart({
    required ProductGetAllModel product,
    required String userId,
  }) async {
    try {
      return ApiResult.success(
        await _dataSource.addProductToCart(
          product: product,
          userId: userId,
        ),
      );
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }
}
