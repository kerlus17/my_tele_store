import 'package:tele_store/features/admin/add_product/data/models/update_product_request_body.dart';

class ProductQuires {
  factory ProductQuires() {
    return _instance;
  }

  const ProductQuires._();

  static const ProductQuires _instance = ProductQuires._();

  Map<String, dynamic> getAllProductsQuery() {
    return {
      'query': r'''
          {
              products{

	            id
                title
                images
                price
                description
                category{
                    id
                   name
               }

             }
            }
      ''',
    };
  }

  Map<String, dynamic> deleteMapQuery({
    required String productId,
  }) {
    return {
      'query': r'''
      mutation DeleteCategory($productId: ID!) {
        deleteProduct(id: $productId)
      }
    ''',
      'variables': {
        'productId': productId,
      },
    };
  }



  Map<String, dynamic> updateProductMap({
    required UpdateProductRequestBody body,
  }) {
    return {
      'query': r'''
      mutation UpdateProduct($productId: ID!, $title: String!,$description: String!,$imageList: [String!]!,$price: Float!,$categoryId: Float! ) {
        updateProduct(id: $productId,
        changes: {
          title: $title,
          categoryId: $categoryId,
          images:$imageList,
          description: $description,
          price:$price
        }) {
          title
        }
      }
    ''',
      'variables': {
        'productId': body.productId,
        'title': body.title,
        'description': body.description,
        'imageList': body.imageList,
        'categoryId': body.categoryId,
        'price': body.price,
      },
    };
  }
}
