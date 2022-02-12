import 'package:flutter/foundation.dart';
import 'package:qiita_inherited_widget/api/service.dart';

import '../../model/article.dart';

class ArticleListViewModel extends ChangeNotifier {
  ArticleListViewModel() : super() {
    getFlutterArticle();
  }

  final api = Service.create();

  List<Article> _articles = [];
  List<Article> get articles => _articles;

  Future<void> getFlutterArticle() async {
    _articles = await api.getFlutterArticles();
    notifyListeners();
  }
}