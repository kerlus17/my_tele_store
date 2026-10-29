class ProductDetailsQueries {
  factory ProductDetailsQueries() {
    return _instance;
  }

  const ProductDetailsQueries._();

  static const ProductDetailsQueries _instance = ProductDetailsQueries._();

 Map<String, dynamic> getProductDetailsMapQuery({required int id}) {
  return {
    'query': '''
      query GetProduct(\$id: ID!) {
        product(id: \$id) {
          title
          price
          images
          description
        }
      }
    ''',
    'variables': {
      'id': id,
    },
  };
}
}
