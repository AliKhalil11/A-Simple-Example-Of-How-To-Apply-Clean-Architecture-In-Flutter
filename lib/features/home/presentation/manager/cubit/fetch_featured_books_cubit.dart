



// ignore_for_file: non_constant_identifier_names

import 'package:book_market/features/home/domain/use_case/fetchFeatureBooks_Use_case.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/entity/book_entity.dart';


part 'fetch_featured_books_state.dart';

class FetchFeaturedBooksCubit extends Cubit<FetchFeaturedBooksState> {
  FetchFeaturedBooksCubit(this.featureBooks_use_case) : super(FetchFeaturedBooksInitial());
  final FetchFeatureBooks_use_case featureBooks_use_case;
  Future<void> fetchFeatureBooks()async{
  emit(FetchFeaturedBooksLoding());
 var result= await featureBooks_use_case.call();
  result.fold((failure) {
    emit(FetchFeaturedBooksFailure(failure.message));

  }, 
  (books) {
emit(FetchFeaturedBooksSuccess(books));

  });
  }
}
