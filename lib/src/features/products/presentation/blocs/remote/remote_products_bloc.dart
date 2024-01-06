import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:mobile_ec/src/core/network/data_state.dart';
import 'package:mobile_ec/src/features/products/domain/entities/product_entity.dart';
import 'package:mobile_ec/src/features/products/domain/usecases/get_usecase.dart';

part 'remote_products_event.dart';
part 'remote_products_state.dart';

class ProductsRemoteBloc
    extends Bloc<ProductsRemoteGetEvent, ProductsRemoteState> {
  final GetProductsUsecase _getProductsUsecase;

  ProductsRemoteBloc(this._getProductsUsecase)
      : super(ProductsRemoteInitial()) {
    on<ProductsRemoteGetEvent>(onGetProducts);
  }

  void onGetProducts(
      ProductsRemoteGetEvent event, Emitter<ProductsRemoteState> emit) async {
    emit(ProductsRemoteGetLoading());
    final dataState = await _getProductsUsecase();

    if (dataState is DataSuccess && dataState.data!.isNotEmpty) {
      emit(ProductsRemoteGetLoaded(dataState.data!));
    } else if (dataState is DataError) {
      print(dataState.error);
      emit(ProductsRemoteGetError(dataState.error!));
    }
  }
}
