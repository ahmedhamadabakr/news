
import 'package:flutter/material.dart';
import 'package:news/model/article_model.dart';
import 'package:news/services/news_servce.dart';
import 'package:news/widgets/tilelist_view.dart';
import 'package:shimmer/shimmer.dart';

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
        ? SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => Padding(
              padding: EdgeInsets.all(16),
              child: Shimmer.fromColors(
                baseColor: Colors.grey[300]!,
                highlightColor: Colors.grey[100]!,
                child: Container(
                  height: 100,
                  width: double.infinity,
                  color: Colors.black,
                ),
              ),
            ),
            childCount: 5,
          ),
        )
        : TilelistViewState(articles: articles);
  }
}
