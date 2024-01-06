import 'package:dio/dio.dart';
import 'package:mobile_ec/src/core/constants/api_constants.dart';
import 'package:mobile_ec/src/features/account/data/models/favorite_response.dart';
import 'package:retrofit/retrofit.dart';

part 'favorites_remote_datasource.g.dart';

@RestApi(baseUrl: APIConstants.BASE_URL)
abstract class FavoritesRemoteDataSource {
  factory FavoritesRemoteDataSource(Dio dio) = _FavoritesRemoteDataSource;

  @GET('/user/favorites')
  Future<HttpResponse<FavoriteResponse>> get();
}
