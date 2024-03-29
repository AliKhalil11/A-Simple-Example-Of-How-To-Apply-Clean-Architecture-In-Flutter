// ignore_for_file: camel_case_types, file_names

import 'package:book_market/core/error/Failure.dart';
import 'package:dartz/dartz.dart';
import '../entity/book_entity.dart';
import '../repositories/Home_Ripo.dart';

class FetchFeatureBooks_use_case{
  final HomeRipo homeRipo;
  FetchFeatureBooks_use_case(this.homeRipo);
  Future<Either<Failure ,List<BookEntity>>> call() async{
    return await homeRipo.fetchFeatureBooks();
  }
}