part of 'cart_remote_bloc.dart';

sealed class CartRemoteState extends Equatable {
  final List<ProductEntity>? products;
  final DioException? error;
  const CartRemoteState(this.products, this.error);

  @override
  List<Object> get props => [];
}

final class CartInitial extends CartRemoteState {
  CartInitial() : super(null, null);
}

final class CartRemoteGetItemsLoading extends CartRemoteState {
  CartRemoteGetItemsLoading() : super(null, null);
}

final class CartRemoteGetItemsEmpty extends CartRemoteState {
  const CartRemoteGetItemsEmpty() : super(null, null);
}

final class CartRemoteGetItemsLoaded extends CartRemoteState {
  const CartRemoteGetItemsLoaded(List<ProductEntity> products)
      : super(products, null);
}

final class CartRemoteGetItemsError extends CartRemoteState {
  const CartRemoteGetItemsError(DioException error) : super(null, error);
}

final class CartRemoteAddItemLoading extends CartRemoteState {
  CartRemoteAddItemLoading() : super(null, null);
}

final class CartRemoteAddItemLoaded extends CartRemoteState {
  const CartRemoteAddItemLoaded() : super(null, null);
}

final class CartRemoteAddItemError extends CartRemoteState {
  const CartRemoteAddItemError(DioException error) : super(null, error);
}

final class CartRemoteRemoveItemLoading extends CartRemoteState {
  CartRemoteRemoveItemLoading() : super(null, null);
}

final class CartRemoteRemoveItemLoaded extends CartRemoteState {
  const CartRemoteRemoveItemLoaded() : super(null, null);
}

final class CartRemoteRemoveItemError extends CartRemoteState {
  const CartRemoteRemoveItemError(DioException error) : super(null, error);
}
