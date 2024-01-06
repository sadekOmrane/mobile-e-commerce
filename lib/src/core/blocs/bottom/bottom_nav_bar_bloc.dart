import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bottom_nav_bar_event.dart';
part 'bottom_nav_bar_state.dart';

class BottomNavBarBloc extends Bloc<BottomNavBarEvent, BottomNavBarState> {
  BottomNavBarBloc() : super(BottomNavBarInitial()) {
    on<BottomNavBarEvent>((event, emit) {
      if (event is BottomNavBarNavigateEvent) {
        emit(BottomNavBarNavigation(index: event.index));
      }
    });
  }
}
