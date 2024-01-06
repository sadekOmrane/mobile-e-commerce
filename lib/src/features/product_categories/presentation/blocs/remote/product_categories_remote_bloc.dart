import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:mobile_ec/src/core/network/data_state.dart';
import 'package:mobile_ec/src/features/product_categories/domain/entities/product_category_entity.dart';
import 'package:mobile_ec/src/features/product_categories/domain/usecases/get_product_categories_usecase.dart';

part 'product_categories_remote_event.dart';
part 'product_categories_remote_state.dart';

class ProductCategoriesRemoteBloc
    extends Bloc<ProductCategoriesRemoteEvent, ProductCategoriesRemoteState> {
  final GetProductCategoriesUsecase _getProductCategoriesUsecase;

  ProductCategoriesRemoteBloc(this._getProductCategoriesUsecase)
      : super(ProductCategoriesRemoteInitial()) {
    on<GetProductCategoriesRemoteEvent>(onGetProductCategories);
  }

  void onGetProductCategories(GetProductCategoriesRemoteEvent event,
      Emitter<ProductCategoriesRemoteState> emit) async {
    emit(ProductCategoriesRemoteLoading());
    final dataState = await _getProductCategoriesUsecase();
    if (dataState is DataSuccess && dataState.data!.isNotEmpty) {
      emit(ProductCategoriesRemoteLoaded(dataState.data!));
    } else if (dataState is DataError) {
      print(dataState.error);
      emit(ProductCategoriesRemoteError(dataState.error!));
    }
  }
}
