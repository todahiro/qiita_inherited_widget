import 'package:flutter/material.dart';

import '../../../model/article.dart';

class ArticleItem extends StatelessWidget {
  const ArticleItem({
    Key? key,
    required this.article,
    required this.onArticleClicked,
  }) : super(key: key);

  final Article article;
  final ValueChanged onArticleClicked;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: InkWell(
        onTap: () => onArticleClicked(
          article,
        ),
        child: SizedBox(
          height: 75,
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: Image.network(
                    article.user.profileImageUrl,
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Text(
                  article.title,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
