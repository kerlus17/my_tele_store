import 'package:tele_store/core/serves/graphql/api_service.dart';
import 'package:tele_store/core/serves/graphql/qraphql_queries/admin/admin_quires.dart';
import 'package:tele_store/features/admin/dashBoard/data/models/categories_number_response.dart';
import 'package:tele_store/features/admin/dashBoard/data/models/products_number_response.dart';
import 'package:tele_store/features/admin/dashBoard/data/models/users_number_response.dart';

class DashboardDataSource {
  DashboardDataSource(this._grapQl);

  final ApiService _grapQl;

  Future<CategoriesNumberResponse> numberOfCategories() async {
    final response =await _grapQl.numberOfCategories(
      AdminQuires().numberOfCategoriessQuery(),
    );
    return response;
  }

  Future<UsersNumberResponse> numberOfUsers() async {
    final response =await _grapQl.numberOfUsers(
      AdminQuires().numberOfUserssQuery(),
    );
    return response;
  }

  Future<ProductsNumberResponse> numberOfProducts() async {
    final response =await _grapQl.numberOfProducts(
      AdminQuires().numberOfProductsQuery(),
    );
    return response;
  }
}
