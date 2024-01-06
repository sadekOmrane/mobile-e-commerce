part of 'bottom_nav_bar_bloc.dart';

@immutable
sealed class BottomNavBarState {}

final class BottomNavBarInitial extends BottomNavBarState {}

final class BottomNavBarNavigation extends BottomNavBarState {
  int index;
  BottomNavBarNavigation({
    required this.index,
  });
}
