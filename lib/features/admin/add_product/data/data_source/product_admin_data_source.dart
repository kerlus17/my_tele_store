import 'package:tele_store/core/serves/graphql/api_service.dart';
import 'package:tele_store/core/serves/graphql/qraphql_queries/admin/product_quires.dart';
import 'package:tele_store/features/admin/add_product/data/models/create_product_request_body.dart';
import 'package:tele_store/features/admin/add_product/data/models/get_all_product_response.dart';
import 'package:tele_store/features/admin/add_product/data/models/update_product_request_body.dart';

class ProductAdminDataSource {
  const ProductAdminDataSource(this._graphql);

  final ApiService _graphql;

  Future<GetAllProductResponse> getAllProducts() async {
    final response = await _graphql.getAllProduct(
      ProductQuires().getAllProductsQuery(),
    );
    return response;
  }

 Future<void> deleteProduct(String id) async {
    final response = await _graphql.deleteProduct(
      ProductQuires().deleteMapQuery(productId: id),
    );
    return response;
  }


  
 Future<void> updateProduct(UpdateProductRequestBody body) async {
    final response = await _graphql.updateProduct(
      ProductQuires().updateProductMap(body: body)
    );
    return response;
  }
  
  Future<void> createProduct(CreateProductRequestBody body) async {
    final response = await _graphql.createProduct(
      body
    );
    return response;
  }
}
