part of 'favorites_remote_bloc.dart';

sealed class FavoritesRemoteEvent extends Equatable {
  const FavoritesRemoteEvent();

  @override
  List<Object> get props => [];
}

class FavoritesRemoteGetEvent extends FavoritesRemoteEvent {
  const FavoritesRemoteGetEvent();
}
