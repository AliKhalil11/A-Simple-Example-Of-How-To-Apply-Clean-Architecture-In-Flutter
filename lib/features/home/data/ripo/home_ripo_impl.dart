

// ignore_for_file: await_only_futures

import 'package:book_market/core/error/Failure.dart';
import 'package:book_market/features/home/data/data_source/home_local_data.dart';
import 'package:book_market/features/home/data/data_source/home_remote_data.dart';
import 'package:book_market/features/home/domain/repositories/Home_Ripo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../domain/entity/book_entity.dart';


class HomeRipoImpl extends HomeRipo{
  final HomeRemotData homeRemotData;
  final HomeLocalData homeLocalData;
  HomeRipoImpl({required this.homeLocalData,required this.homeRemotData});
  @override
  Future<Either<Failure, List<BookEntity>>> fetchBestBooks() async{
     List<BookEntity> booksList;
    try{
       booksList = homeLocalData.fetchBestBooks();
      if(booksList.isNotEmpty){
        return right(booksList);
      }
    booksList = await homeRemotData.fetchBestBooks();
   return right(booksList);
    } catch(e){
    
    if  ( e is DioException){
      return left(ServerFailure.fromDiorError(e));

      }else{
        return left(ServerFailure(e.toString()));
      }
    
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeatureBooks()async {
    
     try{
      List<BookEntity> books;
       books = await homeLocalData.fetchFeatureBooks();
      if(books.isNotEmpty){
        return right(books);
      }
    books = await homeRemotData.fetchFeatureBooks();
   return right(books);
    } catch(e){
      if (e is DioException){
        return left(ServerFailure.fromDiorError(e));
      }else{
        return left(ServerFailure(e.toString()));
      }
     
  }
  
}
}