import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_ec/src/core/network/data_state.dart';
import 'package:mobile_ec/src/features/cart/domain/usecases/add_item_usercase.dart';
import 'package:mobile_ec/src/features/cart/domain/usecases/get_usecase.dart';
import 'package:mobile_ec/src/features/cart/domain/usecases/remove_item_usecase.dart';
import 'package:mobile_ec/src/features/products/domain/entities/product_entity.dart';

part 'cart_remote_event.dart';
part 'cart_remote_state.dart';

class CartRemoteBloc extends Bloc<CartRemoteEvent, CartRemoteState> {
  final GetCartUserCase _getCartUsecase;
  final AddItemUseCase _addItemUseCase;
  final RemoveItemUseCase _removeItemUseCase;

  CartRemoteBloc(
      this._getCartUsecase, this._addItemUseCase, this._removeItemUseCase)
      : super(CartInitial()) {
    on<CartRemoteGetItemsEvent>(onGetCart);
    on<CartRemoteAddItemEvent>(onAddItem);
    on<CartRemoteRemoveItemEvent>(onRemoveItem);
  }

  void onGetCart(
      CartRemoteGetItemsEvent event, Emitter<CartRemoteState> emit) async {
    emit(CartRemoteGetItemsLoading());
    final dataState = await _getCartUsecase();

    if (dataState is DataSuccess && dataState.data!.isNotEmpty) {
      emit(CartRemoteGetItemsLoaded(dataState.data!));
    } else if (dataState is DataSuccess && dataState.data!.isEmpty) {
      emit(CartRemoteGetItemsEmpty());
    } else if (dataState is DataError) {
      print(dataState.error);
      emit(CartRemoteGetItemsError(dataState.error!));
    }
  }

  void onAddItem(
      CartRemoteAddItemEvent event, Emitter<CartRemoteState> emit) async {
    emit(CartRemoteAddItemLoading());
    final dataState = await _addItemUseCase(
      params: AddItemParams(
        productUuid: event.productUuid,
        quantity: event.quantity,
      ),
    );
    print(dataState);
    if (dataState is DataSuccess) {
      emit(CartRemoteAddItemLoaded());
    } else if (dataState is DataError) {
      print(dataState.error);
      emit(CartRemoteAddItemError(dataState.error!));
    }
  }

  void onRemoveItem(
      CartRemoteRemoveItemEvent event, Emitter<CartRemoteState> emit) async {
    emit(CartRemoteRemoveItemLoading());
    final dataState = await _removeItemUseCase(
      params: RemoveItemParams(
        productUuid: event.productUuid,
      ),
    );
    if (dataState is DataSuccess) {
      emit(CartRemoteRemoveItemLoaded());
    } else if (dataState is DataError) {
      print(dataState.error);
      emit(CartRemoteRemoveItemError(dataState.error!));
    }
  }
}
