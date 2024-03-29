import 'package:book_market/constants.dart';
import 'package:hive/hive.dart';
import '../../domain/entity/book_entity.dart';


abstract class HomeLocalData{
  List<BookEntity> fetchFeatureBooks();
  List<BookEntity> fetchBestBooks();

}
class HomeLocalDataImpl extends HomeLocalData{
  @override
  List<BookEntity> fetchBestBooks() {
    var box = Hive.box<BookEntity>(kNewsBestBook);
   return box.values.toList();
  }

  @override
  List<BookEntity> fetchFeatureBooks() {
   var box = Hive.box<BookEntity>(kFeaturedBox);
     return box.values.toList();
  }
  
}
