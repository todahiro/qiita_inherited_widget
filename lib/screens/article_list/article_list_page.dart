import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qiita_inherited_widget/screens/article_list/widgets/article_item.dart';

import 'article_list_view_model.dart';

class ArticleListPage extends StatelessWidget {
  const ArticleListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Qiita Sample',
        ),
        centerTitle: true,
      ),
      body: _List(),
    );
  }
}

class _List extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final articles = context.watch<ArticleListViewModel>().articles;
    final articles = context.select((ArticleListViewModel viewModel) => viewModel.articles);
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ListView.builder(
        itemCount: articles.length,
        itemBuilder: (context, int position) => ArticleItem(
          article: articles[position],
          onArticleClicked: (qiitaInfo) => null,
        ),
      ),
    );
  }
}
