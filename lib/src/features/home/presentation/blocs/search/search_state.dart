part of 'search_bloc.dart';

@immutable
sealed class SearchState {}

final class SearchInitial extends SearchState {}

final class SearchStarted extends SearchState {}

final class SearchLoading extends SearchState {}

final class SearchLoaded extends SearchState {}

final class SearchError extends SearchState {}

final class SearchEmpty extends SearchState {}

final class SearchGridView extends SearchState {}

final class SearchListView extends SearchState {}
