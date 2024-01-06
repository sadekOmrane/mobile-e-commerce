// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'bottom_nav_bar_bloc.dart';

@immutable
sealed class BottomNavBarEvent {}

class BottomNavBarNavigateEvent extends BottomNavBarEvent {
  int index;
  BottomNavBarNavigateEvent({
    required this.index,
  });
}
