import 'package:flutter/material.dart';
import 'package:tele_store/core/serves/graphql/api_result.dart';
import 'package:tele_store/core/utils/app_strings.dart';
import 'package:tele_store/features/admin/add_categories/data/data_source/categories_admin_data_source.dart';
import 'package:tele_store/features/admin/add_categories/data/models/create_category_request_body.dart';
import 'package:tele_store/features/admin/add_categories/data/models/create_category_response.dart';
import 'package:tele_store/features/admin/add_categories/data/models/get_all_categories_response.dart';
import 'package:tele_store/features/admin/add_categories/data/models/update_category_request_body.dart';

class CategoriesAdminRepo {
  const CategoriesAdminRepo(this._dataSource);

  final CategoriesAdminDataSource _dataSource;

  // Get All categories admin

  Future<ApiResult<CategoriesGetAllResponse>> getAllCategoriesAdmin() async {
    try {
      final response = await _dataSource.getAllCategories();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(errmsg);
    }
  }

  Future<ApiResult<CreateCategoryResponse>> createCategory(
    CreateCategoryRequestBody body,
  ) async {
    try {
      final response = await _dataSource.createCategory(body);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(errmsg);
    }
  }

  Future<ApiResult<void>> deleteCategory({required String categoryId}) async {
    try {
      final response = await _dataSource.deleteCategory(categoryId: categoryId);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(errmsg);
    }
  }



  
  Future<ApiResult<void>> updateCategory({required UpdateCategoryRequestBody body}) async {
    try {
      final response = await _dataSource.updateCategory(body);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(errmsg);
    }
  }
}
