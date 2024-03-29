

import 'package:hive/hive.dart';
part 'book_entity.g.dart';
@HiveType(typeId:0)
class BookEntity {
@HiveField(0)
  final String? image;
@HiveField(1)
  final String booktitle;
@HiveField(2)
  final num bookid;
@HiveField(3)
  final num bookId;
@HiveField(4)
  final String? imageauthername;
  BookEntity({required this.booktitle, required this.bookid, required this.image, required this.bookId,required this.imageauthername});
}
