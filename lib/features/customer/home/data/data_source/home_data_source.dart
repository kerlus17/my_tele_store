import 'package:tele_store/core/serves/graphql/api_service.dart';
import 'package:tele_store/core/serves/graphql/qraphql_queries/customer/home_queries.dart';
import 'package:tele_store/features/customer/home/data/models/banner_response.dart';

class HomeDataSource {
  const HomeDataSource(this._graphql);

  final ApiService _graphql;

  Future<BannersResponse> getBanners() async {
    final response =
        await _graphql.getBunner(HomeQueries().getBannersMapQuery());
    return response;
  }
}
