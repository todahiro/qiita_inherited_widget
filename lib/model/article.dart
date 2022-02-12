import 'package:freezed_annotation/freezed_annotation.dart';
import 'user.dart';

part 'article.freezed.dart';
part 'article.g.dart';

@freezed
class Article with _$Article {
  factory Article({
    required String title,
    required String url,
    required User user,
  }) = _Article;

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
}