import 'package:flutter/material.dart';
import 'package:news/error/error.dart';
import 'package:news/model/article_model.dart';
import 'package:news/services/news_servce.dart';
import 'package:news/views/loading_view.dart';
import 'package:news/widgets/tilelist_view.dart';

class NewsListviewBilder extends StatefulWidget {
  const NewsListviewBilder({super.key});

  @override
  State<NewsListviewBilder> createState() => _NewsListviewBilderState();
}

class _NewsListviewBilderState extends State<NewsListviewBilder> {
  List<ArticleModel> articles = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articles = await NewsServce().getNews();
    isLoading = false;
    setState(() {}); //up date data in articles list
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? LoadingView()
        : articles.isNotEmpty
        ? TilelistViewState(articles: articles)
        : Errorview(textError: 'OOPS حدث خطأ!');
  }
}
