import 'package:tele_store/core/serves/graphql/api_result.dart';
import 'package:tele_store/core/utils/app_strings.dart';
import 'package:tele_store/features/admin/add_categories/data/models/get_all_categories_response.dart';
import 'package:tele_store/features/admin/add_product/data/models/get_all_product_response.dart';
import 'package:tele_store/features/customer/home/data/data_source/home_data_source.dart';
import 'package:tele_store/features/customer/home/data/models/banner_response.dart';

class HomeRepo {
  HomeRepo(this._dataSource);

  final HomeDataSource _dataSource;

  Future<ApiResult<BannersResponse>> getBanners() async {
    try {
      final response = await _dataSource.getBanners();
      return ApiResult.success(response);
    } catch (e) {
      return const ApiResult.failure(errmsg);
    }
  }

  Future<ApiResult<CategoriesGetAllResponse>> getAllCategories() async {
    try {
      final response = await _dataSource.getAllCategories();
      return ApiResult.success(response);
    } catch (e) {
      return const ApiResult.failure(errmsg);
    }
  }

  
  Future<ApiResult<GetAllProductResponse>> getAllProducts() async {
    try {
      final response = await _dataSource.getAllProducts();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(errmsg);
    }
  }

}
