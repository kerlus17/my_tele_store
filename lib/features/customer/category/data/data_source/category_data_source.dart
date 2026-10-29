import 'package:tele_store/core/serves/graphql/api_service.dart';
import 'package:tele_store/core/serves/graphql/qraphql_queries/customer/category_query.dart';
import 'package:tele_store/features/admin/add_product/data/models/get_all_product_response.dart';

class CatgeoryDataSource {
  const CatgeoryDataSource(this._graphql);

  final ApiService _graphql;

  Future<GetAllProductResponse> getCategory({required int categoryId}) async {
    final response = await _graphql.getCategory(
      CategoryQueries().getCatgeoryMapQuery(categoryId: categoryId));
    return response;
  }
}