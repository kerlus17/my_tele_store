import 'package:tele_store/core/serves/graphql/api_result.dart';
import 'package:tele_store/core/utils/app_strings.dart';
import 'package:tele_store/features/admin/add_product/data/data_source/product_admin_data_source.dart';
import 'package:tele_store/features/admin/add_product/data/models/create_product_request_body.dart';
import 'package:tele_store/features/admin/add_product/data/models/get_all_product_response.dart';
import 'package:tele_store/features/admin/add_product/data/models/update_product_request_body.dart';

class  ProductAdminRepo{
  const ProductAdminRepo(this._dataSource);

  final ProductAdminDataSource _dataSource;


  Future<ApiResult<GetAllProductResponse>> getAllProductssAdmin() async {
    try {
      final response = await _dataSource.getAllProducts();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(errmsg);
    }
  }


  Future<ApiResult<void>> deleteProduct({required String id}) async {
    try {
      final response = await _dataSource.deleteProduct(id);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(errmsg);
    }
  }

  

  Future<ApiResult<void>> updateProduct({required UpdateProductRequestBody body}) async {
    try {
      final response = await _dataSource.updateProduct(body);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(errmsg);
    }
  }


  

  Future<ApiResult<void>> createProduct(CreateProductRequestBody body) async {
    try {
      final response = await _dataSource.createProduct(body);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(errmsg);
    }
  }
}
