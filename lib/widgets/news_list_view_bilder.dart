import 'package:flutter/material.dart';
import 'package:news/error/error.dart';
import 'package:news/services/news_servce.dart';
import 'package:news/views/loading_view.dart';
import 'package:news/widgets/tilelist_view.dart';

class NewsListviewBilder extends StatelessWidget {
  const NewsListviewBilder({super.key});

  @override
  Widget build(BuildContext context) {
    // come with <future>
    return FutureBuilder(
      future: NewsServce().getNews(),
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
