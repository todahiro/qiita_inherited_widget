// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Article _$$_ArticleFromJson(Map<String, dynamic> json) => _$_Article(
      title: json['title'] as String,
      url: json['url'] as String,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ArticleToJson(_$_Article instance) =>
    <String, dynamic>{
      'title': instance.title,
      'url': instance.url,
      'user': instance.user,
    };
