part of 'featch_best_book_cubit.dart';

@immutable
sealed class FeatchBestBookState {}

final class FeatchBestBookInitial extends FeatchBestBookState {}
final class FetchBestBooksLoding extends FeatchBestBookState {}
final class FetchBestBooksFailure extends FeatchBestBookState {
final String errMessage;
FetchBestBooksFailure(this.errMessage);
}
final class FetchBestBooksSuccess extends FeatchBestBookState {
  final List<BookEntity> books;
  FetchBestBooksSuccess(this.books);
}
