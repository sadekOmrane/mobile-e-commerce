part of 'favorites_remote_bloc.dart';

sealed class FavoritesRemoteState extends Equatable {
  final List<ProductEntity>? products;
  final DioException? error;
  const FavoritesRemoteState(this.products, this.error);

  @override
  List<Object> get props => [];
}

final class FavoritesRemoteInitial extends FavoritesRemoteState {
  FavoritesRemoteInitial() : super(null, null);
}

final class FavoritesRemoteGetLoading extends FavoritesRemoteState {
  FavoritesRemoteGetLoading() : super(null, null);
}

final class FavoritesRemoteGetEmpty extends FavoritesRemoteState {
  const FavoritesRemoteGetEmpty() : super(null, null);
}

final class FavoritesRemoteGetLoaded extends FavoritesRemoteState {
  const FavoritesRemoteGetLoaded(List<ProductEntity> products)
      : super(products, null);
}

final class FavoritesRemoteGetError extends FavoritesRemoteState {
  const FavoritesRemoteGetError(DioException error) : super(null, error);
}
