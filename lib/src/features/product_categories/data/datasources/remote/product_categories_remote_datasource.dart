import 'package:dio/dio.dart';
import 'package:mobile_ec/src/core/constants/api_constants.dart';
import 'package:mobile_ec/src/features/product_categories/data/models/product_category_response.dart';
import 'package:retrofit/retrofit.dart';
part 'product_categories_remote_datasource.g.dart';

@RestApi(baseUrl: APIConstants.BASE_URL)
abstract class ProductCategoriesRemoteDataSource {
  factory ProductCategoriesRemoteDataSource(Dio dio) =
      _ProductCategoriesRemoteDataSource;

  @GET('/user/categories')
  Future<HttpResponse<ProductCategoriesResponse>> get();
}
