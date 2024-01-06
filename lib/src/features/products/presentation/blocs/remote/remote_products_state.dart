part of 'remote_products_bloc.dart';

sealed class ProductsRemoteState extends Equatable {
  final List<ProductEntity>? products;
  final DioException? error;
  const ProductsRemoteState(this.products, this.error);

  @override
  List<Object> get props => [
        products!,
        error!,
      ];
}

final class ProductsRemoteInitial extends ProductsRemoteState {
  const ProductsRemoteInitial() : super(null, null);
}

final class ProductsRemoteGetLoading extends ProductsRemoteState {
  const ProductsRemoteGetLoading() : super(null, null);
}

final class ProductsRemoteGetLoaded extends ProductsRemoteState {
  const ProductsRemoteGetLoaded(List<ProductEntity> products)
      : super(products, null);
}

final class ProductsRemoteGetError extends ProductsRemoteState {
  const ProductsRemoteGetError(DioException error) : super(null, error);
}
