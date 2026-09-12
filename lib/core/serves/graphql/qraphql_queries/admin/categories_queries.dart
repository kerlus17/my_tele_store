import 'package:tele_store/features/admin/add_categories/data/models/update_category_request_body.dart';

class CategoriesQueries {
  factory CategoriesQueries() {
    return _instance;
  }

  const CategoriesQueries._();

  static const CategoriesQueries _instance = CategoriesQueries._();

  Map<String, dynamic> getAllCategoriessQuery() {
    return {
      'query': r'''
          {

            categories{
                      id
                      name
                      image
              }
          }
      ''',
    };
  }

  Map<String, dynamic> deleteCategoryQuery({required String categoryId}) {
    return {
      'query': r'''
          mutation DeleteCategory($categoryId: ID!) {
	                deleteCategory(id:$categoryId )
              
              }

      ''',
      'variables': {'categoryId': categoryId},
    };
  }

  Map<String, dynamic> updateMapQuery({
    required UpdateCategoryRequestBody body,
  }) {
    return {
      'query': r'''
      mutation Update($id: ID!, $name: String!, $image: String!) {
        updateCategory(id: $id, changes: { name: $name, image: $ima
          id
        }
      }
    ''',
      'variables': {
        'id': body.id,
        'name': body.name,
        'image': body.image,
      },
    };
  }
}
