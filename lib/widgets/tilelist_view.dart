import 'package:flutter/material.dart';
import 'package:news/model/article_model.dart';
import 'package:news/widgets/newsList_view.dart';

class TilelistViewState extends StatelessWidget {
  const TilelistViewState({super.key, required this.articles});

  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    //call evry time run
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articles.length, (
        context,
        index,
      ) {
        return NewslistView(articleModel: articles[index]);
      }),
    );
  }
}
