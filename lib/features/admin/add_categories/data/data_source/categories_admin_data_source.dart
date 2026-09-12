import 'package:tele_store/core/serves/graphql/api_service.dart';
import 'package:tele_store/core/serves/graphql/qraphql_queries/admin/categories_queries.dart';
import 'package:tele_store/features/admin/add_categories/data/models/create_category_request_body.dart';
import 'package:tele_store/features/admin/add_categories/data/models/create_category_response.dart';
import 'package:tele_store/features/admin/add_categories/data/models/get_all_categories_response.dart';
import 'package:tele_store/features/admin/add_categories/data/models/update_category_request_body.dart';

class CategoriesAdminDataSource {
  const CategoriesAdminDataSource(this._graphql);

  final ApiService _graphql;

  Future<CategoriesGetAllResponse> getAllCategories() async {
    final response = await _graphql.grtAllCategories(
      CategoriesQueries().getAllCategoriessQuery(),
    );
    return response;
  }

  Future<CreateCategoryResponse> createCategory(
    CreateCategoryRequestBody body,
  ) async {
    final response = await _graphql.createCategory(body);
    return response;
  }

  Future<void> deleteCategory({required String categoryId}) async {
    final res = await _graphql.deleteCategory(
      CategoriesQueries().deleteCategoryQuery(categoryId: categoryId),
    );
    return res;
  }

  Future<void> updateCategory(UpdateCategoryRequestBody body) async {
    final response = await _graphql.UpdateCategory(
      CategoriesQueries().updateMapQuery(body: body),
    );
    return response;
  }
}
