import '../../domain/entity/book_entity.dart';

class Album extends BookEntity  {
  num? albumId;
  num? id;
  String? title;
  String? url;
  String? thumbnailUrl;

  Album({this.albumId, this.id, this.title, this.url, this.thumbnailUrl}):super(bookId: id!,
  bookid:albumId! ,
  booktitle: title!,
  image: url,
  imageauthername: thumbnailUrl);


  factory Album.fromJson(Map<String, dynamic> json) => Album(
        albumId: json['albumId'] as num?,
        id: json['id'] as num?,
        title: json['title'] as String?,
        url: json['url'] as String?,
        thumbnailUrl: json['thumbnailUrl'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'albumId': albumId,
        'id': id,
        'title': title,
        'url': url,
        'thumbnailUrl': thumbnailUrl,
      };
}
