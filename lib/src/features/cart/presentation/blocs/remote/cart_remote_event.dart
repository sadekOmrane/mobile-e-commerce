// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'cart_remote_bloc.dart';

sealed class CartRemoteEvent extends Equatable {
  const CartRemoteEvent();

  @override
  List<Object> get props => [];
}

class CartRemoteGetItemsEvent extends CartRemoteEvent {
  const CartRemoteGetItemsEvent();
}

class CartRemoteAddItemEvent extends CartRemoteEvent {
  String productUuid;
  int quantity;
  CartRemoteAddItemEvent({
    required this.productUuid,
    required this.quantity,
  });

  @override
  List<Object> get props => [
        productUuid,
        quantity,
      ];
}

class CartRemoteRemoveItemEvent extends CartRemoteEvent {
  String productUuid;
  CartRemoteRemoveItemEvent({
    required this.productUuid,
  });

  @override
  List<Object> get props => [
        productUuid,
      ];
}
