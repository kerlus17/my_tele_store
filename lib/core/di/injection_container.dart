import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:tele_store/core/app/app_cubit/app_cubit.dart';
import 'package:tele_store/core/app/upload_image/cubit/cubit/upload_image_cubit.dart';
import 'package:tele_store/core/app/upload_image/dataSource/upload_image_data_source.dart';
import 'package:tele_store/core/app/upload_image/repos/upload_image_repo.dart';
import 'package:tele_store/core/serves/graphql/api_service.dart';
import 'package:tele_store/core/serves/graphql/dio_factory.dart';
import 'package:tele_store/features/admin/add_categories/data/data_source/categories_admin_data_source.dart';
import 'package:tele_store/features/admin/add_categories/data/repos/categories_admin_repo.dart';
import 'package:tele_store/features/admin/add_categories/presentation/bloc/craete_category/create_category_bloc.dart';
import 'package:tele_store/features/admin/add_categories/presentation/bloc/delete_category/delete_category_bloc.dart';
import 'package:tele_store/features/admin/add_categories/presentation/bloc/get_all_admin_categories/get_all_admin_categories_bloc.dart';
import 'package:tele_store/features/admin/add_categories/presentation/bloc/update_category/update_category_bloc.dart';
import 'package:tele_store/features/admin/add_notification/data/data_source/add_notification_data_source.dart';
import 'package:tele_store/features/admin/add_notification/data/repo/add_notification_repo.dart';
import 'package:tele_store/features/admin/add_notification/presentation/bloc/add_notification/add_notification_bloc.dart';
import 'package:tele_store/features/admin/add_notification/presentation/bloc/get_all_notification_admin/get_all_notification_admin_bloc.dart';
import 'package:tele_store/features/admin/add_notification/presentation/bloc/send_notification/send_notification_bloc.dart';
import 'package:tele_store/features/admin/add_product/data/data_source/product_admin_data_source.dart';
import 'package:tele_store/features/admin/add_product/data/repos/product_admin_repo.dart';
import 'package:tele_store/features/admin/add_product/presentation/bloc/create_product/create_product_bloc.dart';
import 'package:tele_store/features/admin/add_product/presentation/bloc/delete_product/delete_product_bloc.dart';
import 'package:tele_store/features/admin/add_product/presentation/bloc/get_all_admin_products/get_all_admin_products_bloc.dart';
import 'package:tele_store/features/admin/add_product/presentation/bloc/update_product/update_product_bloc.dart';
import 'package:tele_store/features/admin/dashBoard/data/data_source/dashBoard_data_source.dart';
import 'package:tele_store/features/admin/dashBoard/data/repos/dashBoard_repo.dart';
import 'package:tele_store/features/admin/dashBoard/presentation/bloc/Products_number/products_number_bloc.dart';
import 'package:tele_store/features/admin/dashBoard/presentation/bloc/Users_number/users_number_bloc.dart';
import 'package:tele_store/features/admin/dashBoard/presentation/bloc/categories_number/categories_number_bloc.dart';
import 'package:tele_store/features/admin/users/data/data_source/users_data_source.dart';
import 'package:tele_store/features/admin/users/data/repo/users_repo.dart';
import 'package:tele_store/features/admin/users/presentation/bloc/bloc/delete_user_bloc.dart';
import 'package:tele_store/features/admin/users/presentation/bloc/get_all_users/get_all_users_bloc.dart';
import 'package:tele_store/features/auth/data/data_source/auth_data_source.dart';
import 'package:tele_store/features/auth/data/repos/auth_repos.dart';
import 'package:tele_store/features/auth/presentation/bloc/bloc/auth_bloc.dart';
import 'package:tele_store/features/customer/home/data/data_source/home_data_source.dart';
import 'package:tele_store/features/customer/home/data/repo/home_repo.dart';
import 'package:tele_store/features/customer/home/presentation/bloc/get_bunner/get_bunner_bloc.dart';
import 'package:tele_store/features/customer/main/presentaion/cubit/main_cubit.dart';
import 'package:tele_store/features/customer/profile/data/data_source/profile_data_source.dart';
import 'package:tele_store/features/customer/profile/data/repo/profile_repo.dart';
import 'package:tele_store/features/customer/profile/presentation/bloc/profile/profile_bloc.dart';

final GetIt sl = GetIt.instance;

Future<void> setupInjection() async {
  await _initCore();
  await _initAuth();
  await _initDashBoard();
  await _initCategoriesAdmin();
  await _initProductsAdmin();
  await _initUsersAdmin();
  await _initAddNotification();
  await _initMain();
  await _initProfile();
  await _initHome();
}

Future<void> _initCore() async {
  final navigatorKey = GlobalKey<NavigatorState>();
  final dio = DioFactory.getDio();
  sl
    ..registerFactory(AppCubitCubit.new)
    ..registerLazySingleton<ApiService>(() => ApiService(dio))
    ..registerSingleton<GlobalKey<NavigatorState>>(navigatorKey)
    ..registerFactory(() => UploadImageCubit(sl()))
    ..registerLazySingleton(() => UploadImageRepo(sl()))
    ..registerLazySingleton(() => UploadImageDataSource(sl()));
}

Future<void> _initAuth() async {
  sl
    ..registerFactory(() => AuthBloc(sl()))
    ..registerLazySingleton(() => AuthRepos(sl()))
    ..registerLazySingleton(() => AuthDataSource(sl()));
}

Future<void> _initDashBoard() async {
  sl
    ..registerLazySingleton(() => DashboardDataSource(sl()))
    ..registerLazySingleton(() => DashBoardRepo(sl()))
    ..registerFactory(() => ProductsNumberBloc(sl()))
    ..registerFactory(() => CategoriesNumberBloc(sl()))
    ..registerFactory(() => UsersNumberBloc(sl()));
}

Future<void> _initCategoriesAdmin() async {
  sl
    ..registerLazySingleton(() => CategoriesAdminRepo(sl()))
    ..registerLazySingleton(() => CategoriesAdminDataSource(sl()))
    ..registerFactory(() => GetAllAdminCategoriesBloc(sl()))
    ..registerFactory(() => CreateCategoryBloc(sl()))
    ..registerFactory(() => DeleteCategoryBloc(sl()))
    ..registerFactory(() => UpdateCategoryBloc(sl()));
}

Future<void> _initProductsAdmin() async {
  sl
    ..registerLazySingleton(() => ProductAdminRepo(sl()))
    ..registerLazySingleton(() => ProductAdminDataSource(sl()))
    ..registerFactory(() => GetAllAdminProductsBloc(sl()))
    ..registerFactory(() => CreateProductBloc(sl()))
    ..registerFactory(() => DeleteProductBloc(sl()))
    ..registerFactory(() => UpdateProductBloc(sl()));
}

Future<void> _initUsersAdmin() async {
  sl
    ..registerLazySingleton(() => UsersRepo(sl()))
    ..registerLazySingleton(() => UsersDataSource(sl()))
    ..registerFactory(() => GetAllUsersBloc(sl()))
    ..registerFactory(() => DeleteUserBloc(sl()));
}

Future<void> _initAddNotification() async {
  sl
    ..registerFactory(AddNotificationBloc.new)
    ..registerFactory(GetAllNotificationAdminBloc.new)
    ..registerFactory(() => SendNotificationBloc(sl()))
    ..registerLazySingleton(() => AddNotificationRepo(sl()))
    ..registerLazySingleton(AddNotificationDataSource.new);
}

Future<void> _initMain() async {
  sl..registerFactory(MainCubit.new);
}

Future<void> _initProfile() async {
  sl
    ..registerFactory(() => ProfileBloc(sl()))
    ..registerLazySingleton(() => ProfileRepo(sl()))
    ..registerLazySingleton(() => ProfileDataSource(sl()));
}

Future<void> _initHome() async {
  sl
    ..registerFactory(() => GetBunnerBloc(sl()))
    ..registerLazySingleton(() => HomeRepo(sl()))
    ..registerLazySingleton(() => HomeDataSource(sl()));
}
