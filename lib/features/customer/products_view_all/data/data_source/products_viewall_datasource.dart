import 'package:tele_store/core/serves/graphql/api_service.dart';
import 'package:tele_store/core/serves/graphql/qraphql_queries/customer/products_view_all_query.dart';
import 'package:tele_store/features/admin/add_product/data/models/get_all_product_response.dart';

class ProductsViewAllDataSource {
  const ProductsViewAllDataSource(this._graphql);

  final ApiService _graphql;

  // Products View All
  Future<GetAllProductResponse> getProductsViewAll({
    required int offset,
  }) async {
    final response = await _graphql.getProductsViewAll(
      ProductViewAllQueries().getProductsViewAllMapQuery(offset: offset),
    );
    return response;
  }
}
