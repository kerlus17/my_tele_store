import 'package:tele_store/core/serves/graphql/api_service.dart';
import 'package:tele_store/core/serves/graphql/qraphql_queries/customer/product_details_query.dart';
import 'package:tele_store/features/customer/product_details/data/models/product_details_response.dart';

class ProductDetailsDataSource {
  const ProductDetailsDataSource(this._graphql);

  final ApiService _graphql;

  Future<ProductDetailsResponse> productDetails({required int id}) async {
    final response = await _graphql.producteDtails(
      ProductDetailsQueries().getProductDetailsMapQuery(id: id),
    );
    return response;
  }
}
