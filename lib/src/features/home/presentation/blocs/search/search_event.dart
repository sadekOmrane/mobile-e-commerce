part of 'search_bloc.dart';

@immutable
sealed class SearchEvent {}

class SearchEventStarted extends SearchEvent {}

class SearchEventLoading extends SearchEvent {}

class SearchEventClearText extends SearchEvent {}

class SearchEventLoaded extends SearchEvent {}

class SearchEventGridView extends SearchEvent {}

class SearchEventListView extends SearchEvent {}
