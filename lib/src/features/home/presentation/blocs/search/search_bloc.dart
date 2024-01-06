import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(SearchInitial()) {
    on<SearchEvent>(
      (event, emit) {
        // TODO: implement event handler
        if (event is SearchEventStarted) {
          emit(SearchStarted());
        } else if (event is SearchEventLoading) {
          emit(SearchLoading());
        } else if (event is SearchEventLoaded) {
          emit(SearchLoaded());
        } else if (event is SearchEventClearText) {
          emit(SearchStarted());
        } else if (event is SearchEventGridView) {
          emit(SearchGridView());
        } else if (event is SearchEventListView) {
          emit(SearchListView());
        }
      },
    );
  }
}
