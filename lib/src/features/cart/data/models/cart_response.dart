import 'package:json_annotation/json_annotation.dart';
import 'package:mobile_ec/src/features/products/data/models/product_model.dart';

part 'cart_response.g.dart';

@JsonSerializable()
class CartResponse {
  final String message;
  final String status;
  final List<ProductModel> data;

  CartResponse(
      {required this.message, required this.status, required this.data});

  factory CartResponse.fromJson(Map<String, dynamic> json) =>
      _$CartResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CartResponseToJson(this);
}
