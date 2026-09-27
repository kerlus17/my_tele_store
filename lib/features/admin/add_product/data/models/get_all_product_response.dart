import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_all_product_response.g.dart';

@JsonSerializable()
class GetAllProductResponse {
  final ProductGetAllData data;

  GetAllProductResponse(this.data);

  factory GetAllProductResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAllProductResponseFromJson(json);

  List<ProductGetAllModel> get productGetAllList {
    if (data.productsLsit.isEmpty) {
      return [];
    }
    return data.productsLsit;
  }
}

@JsonSerializable()
class ProductGetAllData {
  @JsonKey(name: 'products')
  final List<ProductGetAllModel> productsLsit;

  ProductGetAllData(this.productsLsit);

  factory ProductGetAllData.fromJson(Map<String, dynamic> json) =>
      _$ProductGetAllDataFromJson(json);
}

@JsonSerializable()
class ProductGetAllModel {
  final String? id;
  final String? title;
  final double? price;
  final List<String>? images;
  final String? description;
  final CategoryProductModel? category;

  ProductGetAllModel(
    this.id,
    this.title,
    this.price,
    this.images,
    this.description,
    this.category,
  );

  factory ProductGetAllModel.fromJson(Map<String, dynamic> json) =>
      _$ProductGetAllModelFromJson(json);
}

@JsonSerializable()
class CategoryProductModel {
  CategoryProductModel(this.id, this.name);

  final String? id;
  final String? name;

  factory CategoryProductModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryProductModelFromJson(json);
}
