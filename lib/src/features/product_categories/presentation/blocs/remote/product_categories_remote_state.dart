part of 'product_categories_remote_bloc.dart';

sealed class ProductCategoriesRemoteState extends Equatable {
  final List<ProductCategoryEntity>? productsCategories;
  final DioException? error;
  const ProductCategoriesRemoteState(this.productsCategories, this.error);

  @override
  List<Object> get props => [];
}

final class ProductCategoriesRemoteInitial
    extends ProductCategoriesRemoteState {
  const ProductCategoriesRemoteInitial() : super(null, null);
}

final class ProductCategoriesRemoteLoading
    extends ProductCategoriesRemoteState {
  const ProductCategoriesRemoteLoading() : super(null, null);
}

final class ProductCategoriesRemoteLoaded extends ProductCategoriesRemoteState {
  const ProductCategoriesRemoteLoaded(
      List<ProductCategoryEntity> productsCategories)
      : super(productsCategories, null);
}

final class ProductCategoriesRemoteError extends ProductCategoriesRemoteState {
  const ProductCategoriesRemoteError(DioException error) : super(null, error);
}
