import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import '../model/article.dart';


part 'service.g.dart';

@RestApi(baseUrl: "https://qiita.com/api/v2")
abstract class Service {
  factory Service(Dio dio, {String baseUrl}) = _Service;

  static Service create() {
    final dio = Dio();
    return Service(dio);
  }

  @GET("/tags/flutter/items?per_page=50")
  Future<List<Article>> getFlutterArticles();
}
