part of 'product_categories_remote_bloc.dart';

sealed class ProductCategoriesRemoteEvent extends Equatable {
  const ProductCategoriesRemoteEvent();

  @override
  List<Object> get props => [];
}

class GetProductCategoriesRemoteEvent extends ProductCategoriesRemoteEvent {
  GetProductCategoriesRemoteEvent();
}
