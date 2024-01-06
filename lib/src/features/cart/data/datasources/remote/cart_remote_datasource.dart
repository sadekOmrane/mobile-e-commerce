import 'package:dio/dio.dart';
import 'package:mobile_ec/src/core/constants/api_constants.dart';
import 'package:mobile_ec/src/features/cart/data/models/cart_response.dart';
import 'package:retrofit/retrofit.dart';

part 'cart_remote_datasource.g.dart';

@RestApi(baseUrl: APIConstants.BASE_URL)
abstract class CartRemoteDataSource {
  factory CartRemoteDataSource(Dio dio) = _CartRemoteDataSource;

  @GET('/user/cart')
  Future<HttpResponse<CartResponse>> get();

  @POST('/user/cart/item')
  Future<HttpResponse<void>> addItem(
      {@Field('product') required String product,
      @Field('quantity') required int quantity});

  @DELETE('/user/cart/item/{productUuid}')
  Future<HttpResponse<void>> removeItem(
      {@Path('productUuid') required String productUuid});
}
