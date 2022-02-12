import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qiita_inherited_widget/screens/article_list/article_list_view_model.dart';
import 'screens/article_list/article_list_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider<ArticleListViewModel>(
      create: (_) => ArticleListViewModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ArticleListPage(),
    );
  }
}
