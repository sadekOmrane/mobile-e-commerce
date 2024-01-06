part of 'remote_products_bloc.dart';

sealed class ProductsRemoteEvent extends Equatable {
  const ProductsRemoteEvent();

  @override
  List<Object> get props => [];
}

final class ProductsRemoteGetEvent extends ProductsRemoteEvent {
  const ProductsRemoteGetEvent();
}
