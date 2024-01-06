import 'package:dio/dio.dart';
import 'package:mobile_ec/src/core/constants/api_constants.dart';
import 'package:mobile_ec/src/features/products/data/models/get_products_response.dart';
import 'package:mobile_ec/src/features/products/data/models/product_model.dart';
import 'package:retrofit/retrofit.dart';
part 'product_remote_datasource.g.dart';

@RestApi(baseUrl: APIConstants.BASE_URL)
abstract class ProductRemoteDataSource {
  factory ProductRemoteDataSource(Dio dio) = _ProductRemoteDataSource;

  @GET('/user/products')
  Future<HttpResponse<GetProductsResponse>> get();
}
