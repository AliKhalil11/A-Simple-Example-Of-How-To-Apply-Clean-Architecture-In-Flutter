// ignore_for_file: file_names

import 'package:dartz/dartz.dart';

import '../../../../core/error/Failure.dart';
import '../entity/book_entity.dart';


abstract class HomeRipo{
  Future<Either<Failure ,List<BookEntity>>> fetchFeatureBooks();
  Future<Either<Failure ,List<BookEntity>>> fetchBestBooks();


}