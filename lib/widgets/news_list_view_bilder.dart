import 'package:flutter/material.dart';
import 'package:news/error/error.dart';
import 'package:news/model/article_model.dart';
import 'package:news/services/news_servce.dart';
import 'package:news/views/loading_view.dart';
import 'package:news/widgets/news_view.dart';

class NewsListviewBilder extends StatefulWidget {
  const NewsListviewBilder({super.key, required this.category});

  final String category;

  @override
  State<NewsListviewBilder> createState() => _NewsListviewBilderState();
}

class _NewsListviewBilderState extends State<NewsListviewBilder> {
  var future;

  @override
  void initState() {
    super.initState();
    future = NewsServce().getTopHeadlines(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    // come with <future>
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return TilelistViewState(articles: snapshot.data!);
        } else if (snapshot.hasError) {
          return Errorview(textError: 'OOPS حدث خطأ!');
        } else {
          return LoadingView();
        }
      },
    );
  }
}
