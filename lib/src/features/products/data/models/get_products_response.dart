import 'package:json_annotation/json_annotation.dart';
import 'package:mobile_ec/src/features/products/data/models/product_model.dart';

part 'get_products_response.g.dart';

@JsonSerializable()
class GetProductsResponse {
  final String status;
  final String message;
  final ProductsData data;

  GetProductsResponse({
    required this.status,
    required this.message,
    required this.data,
  });

  factory GetProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetProductsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetProductsResponseToJson(this);
}

@JsonSerializable()
class ProductsData {
  final int? page;
  final int? size;
  final int? totalCount;
  final List<ProductModel> products;

  ProductsData({this.page, this.size, this.totalCount, required this.products});

  factory ProductsData.fromJson(Map<String, dynamic> json) =>
      _$ProductsDataFromJson(json);

  Map<String, dynamic> toJson() => _$ProductsDataToJson(this);
}
