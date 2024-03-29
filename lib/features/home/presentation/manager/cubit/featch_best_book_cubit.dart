// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:book_market/features/home/domain/use_case/fetchBestBooks_use_case.dart';
import 'package:meta/meta.dart';
import '../../../domain/entity/book_entity.dart';





part 'featch_best_book_state.dart';

class FeatchBestBookCubit extends Cubit<FeatchBestBookState> {
  FeatchBestBookCubit(this.fetchBestBooks_use_case) : super(FeatchBestBookInitial());
  final FetchBestBooks_use_case fetchBestBooks_use_case;
   Future<void> fetchBestBooks()async{
  emit(FetchBestBooksLoding());
 var result= await fetchBestBooks_use_case.call();
  result.fold((failure) {
    emit(FetchBestBooksFailure(failure.message));

  }, 
  (books) {
emit(FetchBestBooksSuccess(books));

  });
  }
}
