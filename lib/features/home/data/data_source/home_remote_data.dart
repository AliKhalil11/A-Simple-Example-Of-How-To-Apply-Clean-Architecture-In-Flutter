import 'package:book_market/constants.dart';
import 'package:hive/hive.dart';

import '../../../../core/utilis/service_Api.dart';

import '../../domain/entity/book_entity.dart';
import '../models/album.dart';

abstract class HomeRemotData{
  Future<List<BookEntity>> fetchFeatureBooks();
  Future<List<BookEntity>> fetchBestBooks();

}

class HomeRemotDataImp extends HomeRemotData{
final ApiService apiService;
HomeRemotDataImp(this.apiService);

  @override
  Future<List<BookEntity>> fetchBestBooks()async {
   var data=await apiService.getAlbums();
   var books = data.map((album) => Album.fromJson(album as Map<String,dynamic>)).toList();
   savelocaldata(books, kNewsBestBook);
   return books;
 
  }

 

  @override
  Future<List<BookEntity>> fetchFeatureBooks()async {
     var data=await apiService.getAlbums();
     var books = data.map((album) => Album.fromJson(album as Map<String,dynamic>)).toList();
     savelocaldata(books, kFeaturedBox);
     return books;

  
  }

   void savelocaldata(List<Album> book,String boxname) {
    var box = Hive.box<BookEntity>(boxname);
    box.addAll(book);
  }
  
}