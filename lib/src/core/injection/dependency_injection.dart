import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:mobile_ec/src/core/interceptors/dio_interceptor.dart';
import 'package:mobile_ec/src/features/auth/data/datasources/remote/auth_remote_datasource.dart';
import 'package:mobile_ec/src/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:mobile_ec/src/features/auth/domain/repositories/auth_repository.dart';
import 'package:mobile_ec/src/features/auth/domain/usecases/login_usecase.dart';
import 'package:mobile_ec/src/features/auth/presentation/blocs/remote/remote_auth_bloc.dart';
import 'package:mobile_ec/src/features/cart/data/datasources/remote/cart_remote_datasource.dart';
import 'package:mobile_ec/src/features/cart/data/repositories/cart_repository_impl.dart';
import 'package:mobile_ec/src/features/cart/domain/repositories/cart_repository.dart';
import 'package:mobile_ec/src/features/cart/domain/usecases/add_item_usercase.dart';
import 'package:mobile_ec/src/features/cart/domain/usecases/get_usecase.dart';
import 'package:mobile_ec/src/features/cart/domain/usecases/remove_item_usecase.dart';
import 'package:mobile_ec/src/features/cart/presentation/blocs/remote/cart_remote_bloc.dart';
import 'package:mobile_ec/src/features/product_categories/data/datasources/remote/product_categories_remote_datasource.dart';
import 'package:mobile_ec/src/features/product_categories/data/repositories/product_cateories_repository_impl.dart';
import 'package:mobile_ec/src/features/product_categories/domain/repositories/product_categories_repository.dart';
import 'package:mobile_ec/src/features/product_categories/domain/usecases/get_product_categories_usecase.dart';
import 'package:mobile_ec/src/features/product_categories/presentation/blocs/remote/product_categories_remote_bloc.dart';
import 'package:mobile_ec/src/features/products/data/datasources/remote/product_remote_datasource.dart';
import 'package:mobile_ec/src/features/products/data/repositories/products_repository_impl.dart';
import 'package:mobile_ec/src/features/products/domain/repositories/product_repository.dart';
import 'package:mobile_ec/src/features/products/domain/usecases/get_usecase.dart';
import 'package:mobile_ec/src/features/products/presentation/blocs/remote/remote_products_bloc.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

final sl = GetIt.instance;

Future<void> initDepInjection() async {
  // Dio
  sl.registerLazySingleton<Dio>(() {
    Dio dio = Dio();
    dio.interceptors.add(DioInterceptor());
    dio.interceptors.add(PrettyDioLogger());
    return dio;
  });

  //Dependencies
  // remote datasource
  sl.registerLazySingleton<ProductRemoteDataSource>(
      () => ProductRemoteDataSource(sl()));
  sl.registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSource(sl()));
  sl.registerLazySingleton<CartRemoteDataSource>(
      () => CartRemoteDataSource(sl()));
  sl.registerLazySingleton<ProductCategoriesRemoteDataSource>(
      () => ProductCategoriesRemoteDataSource(sl()));

  // repository
  sl.registerLazySingleton<ProductRepository>(
      () => ProductsRepositoryImpl(remoteDataSource: sl()));
  sl.registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(remoteDataSource: sl()));
  sl.registerLazySingleton<CartRepository>(
      () => CartRepositoryImpl(remoteDataSource: sl()));
  sl.registerLazySingleton<ProductCategoriesRepository>(
      () => ProductCategoriesRepositoryImpl(remoteDataSource: sl()));

  // Use cases
  sl.registerLazySingleton(() => GetProductsUsecase(repository: sl()));
  sl.registerLazySingleton(() => LoginUseCase(repository: sl()));
  sl.registerLazySingleton(() => GetCartUserCase(repository: sl()));
  sl.registerLazySingleton(() => AddItemUseCase(repository: sl()));
  sl.registerLazySingleton(() => RemoveItemUseCase(repository: sl()));
  sl.registerLazySingleton(() => GetProductCategoriesUsecase(repository: sl()));

  // Blocs
  // remote bloc
  sl.registerFactory(() => ProductsRemoteBloc(sl()));
  sl.registerFactory(() => RemoteAuthBloc(sl()));
  sl.registerFactory(() => CartRemoteBloc(sl(), sl(), sl()));
  sl.registerFactory(() => ProductCategoriesRemoteBloc(sl()));
}
