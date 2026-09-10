import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:tele_store/core/app/upload_image/model/upload_image_response.dart';
import 'package:tele_store/features/admin/dashBoard/data/models/categories_number_response.dart';
import 'package:tele_store/features/admin/dashBoard/data/models/products_number_response.dart';
import 'package:tele_store/features/admin/dashBoard/data/models/users_number_response.dart';
import 'package:tele_store/features/auth/data/models/auth_login_response.dart';
import 'package:tele_store/features/auth/data/models/sign_up_response.dart';
import 'package:tele_store/features/auth/data/models/user_role_response.dart';

part 'api_service.g.dart';

const String baseUrl = 'https://api.escuelajs.co';
const String graphql = '/graphql';

@RestApi(baseUrl: baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(graphql)
  Future<LoginResponse> login(
    @Body() Map<String, dynamic> mutaion,
  );

  @POST(graphql)
  Future<SignUpResponse> signUp(
    @Body() Map<String, dynamic> mutation,
  );

  @GET('/api/v1/auth/profile')
  Future<UserRoleResponse> userRole();

  @POST('/api/v1/files/upload')
  Future<UploadImageResponse> uploadImage(@Body() FormData file);

  @POST(graphql)
  Future<ProductsNumberResponse> numberOfProducts(
    @Body() Map<String, dynamic> Query,
  );

  @POST(graphql)
  Future<CategoriesNumberResponse> numberOfCategories(
    @Body() Map<String, dynamic> Query,
  );

  @POST(graphql)
  Future<UsersNumberResponse> numberOfUsers(
    @Body() Map<String, dynamic> Query,
  );
}
