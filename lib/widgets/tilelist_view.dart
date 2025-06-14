import 'package:flutter/material.dart';
import 'package:news/model/article_model.dart';
import 'package:news/services/news_servce.dart';
import 'package:news/widgets/news_tile.dart';

class TilelistView extends StatefulWidget {
  const TilelistView({super.key});

  @override
  State<TilelistView> createState() => _TilelistViewState();
}

class _TilelistViewState extends State<TilelistView> {
  List<ArticleModel> articles = [];

  @override
  void initState() {
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articles = await NewsServce().getNews();
    setState(() {});
    print(articles);
  }

  @override
  Widget build(BuildContext context) {
    //call evry time run
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articles.length, (
        context,
        index,
      ) {
        return NewsTile(articleModel: articles[index]);
      }),
    );
  }
}
