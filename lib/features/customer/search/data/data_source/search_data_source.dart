import 'package:tele_store/core/serves/graphql/api_service.dart';
import 'package:tele_store/core/serves/graphql/qraphql_queries/customer/search_queries.dart';
import 'package:tele_store/features/admin/add_product/data/models/get_all_product_response.dart';
import 'package:tele_store/features/customer/search/data/models/search_request_body.dart';

class SearchDataSource {
  const SearchDataSource(this._graphql);

  final ApiService _graphql;

  Future<GetAllProductResponse> searchProduct({
    required SearchRequestBody body,
  }) async {
    final response = await _graphql.searchProducts(
      SearchQueries().searchProduct(body: body),
    );
    return response;
  }
}
