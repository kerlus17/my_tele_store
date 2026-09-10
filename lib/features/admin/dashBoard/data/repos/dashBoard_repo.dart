import 'package:tele_store/core/serves/graphql/api_result.dart';
import 'package:tele_store/features/admin/dashBoard/data/data_source/dashBoard_data_source.dart';
import 'package:tele_store/features/admin/dashBoard/data/models/categories_number_response.dart';
import 'package:tele_store/features/admin/dashBoard/data/models/products_number_response.dart';
import 'package:tele_store/features/admin/dashBoard/data/models/users_number_response.dart';

class DashBoardRepo {
  const DashBoardRepo(this._dataSource);

  final DashboardDataSource _dataSource;

  // Get Numbers Of Products
  Future<ApiResult<ProductsNumberResponse>> numberOfProducts() async {
    try {
      final response = await _dataSource.numberOfProducts();

      return ApiResult.success(response);
    } catch (error) {
      return const ApiResult.failure('Please, try again we have error');
    }
  }

  Future<ApiResult<CategoriesNumberResponse>> numberOfCategories() async {
    try {
      final response = await _dataSource.numberOfCategories();

      return ApiResult.success(response);
    } catch (error) {
      print('Categories Error: $error');
      return ApiResult.failure(error.toString());
      ;
    }
  }

  Future<ApiResult<UsersNumberResponse>> numberOfUsers() async {
    try {
      final response = await _dataSource.numberOfUsers();

      return ApiResult.success(response);
    } catch (error) {
      return const ApiResult.failure('Please, try again we have error');
    }
  }
}
