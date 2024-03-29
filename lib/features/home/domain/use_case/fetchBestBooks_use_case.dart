// ignore_for_file: camel_case_types, file_names

import 'package:dartz/dartz.dart';

import '../../../../core/error/Failure.dart';
import '../entity/book_entity.dart';
import '../repositories/Home_Ripo.dart';

class FetchBestBooks_use_case{
  final HomeRipo homeRipo;
  FetchBestBooks_use_case(this.homeRipo);
  Future<Either<Failure ,List<BookEntity>>> call()async{
    return await homeRipo.fetchBestBooks();
  }
}