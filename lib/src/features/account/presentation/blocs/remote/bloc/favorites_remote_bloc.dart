import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:mobile_ec/src/core/network/data_state.dart';
import 'package:mobile_ec/src/features/account/domain/usecases/get_usecase.dart';
import 'package:mobile_ec/src/features/products/domain/entities/product_entity.dart';

part 'favorites_remote_event.dart';
part 'favorites_remote_state.dart';

class FavoritesRemoteBloc
    extends Bloc<FavoritesRemoteEvent, FavoritesRemoteState> {
  final GetFavoritesUserCase _getFavoritesUsecase;

  FavoritesRemoteBloc(this._getFavoritesUsecase)
      : super(FavoritesRemoteInitial()) {
    on<FavoritesRemoteGetEvent>(onGetFavorites);
  }

  void onGetFavorites(
      FavoritesRemoteGetEvent event, Emitter<FavoritesRemoteState> emit) async {
    emit(FavoritesRemoteGetLoading());
    final dataState = await _getFavoritesUsecase();

    if (dataState is DataSuccess && dataState.data!.isNotEmpty) {
      emit(FavoritesRemoteGetLoaded(dataState.data!));
    } else if (dataState is DataSuccess && dataState.data!.isEmpty) {
      emit(FavoritesRemoteGetEmpty());
    } else if (dataState is DataError) {
      print(dataState.error);
      emit(FavoritesRemoteGetError(dataState.error!));
    }
  }
}
