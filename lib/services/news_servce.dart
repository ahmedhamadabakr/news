import 'package:dio/dio.dart';
import 'package:news/model/article_model.dart';

class NewsServce {
  final Dio dio;
  NewsServce(this.dio);

  Future<List<ArticleModel>> getNews() async {
    final response = await dio.get(
      'https://newsapi.org/v2/everything?q=Real%20Madrid&apiKey=b0d7b23e11564e3a887b89ac81c475a5&language=ar',
    );

    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];

    List<ArticleModel> ArticlesList = [];

    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
        source: Source(
          id: article['sourse']['id'],
          name: article['sourse']['name'],
        ),
        image: article['urlToImage'],
        title: article['title'],
        sunTitle: article['description'],
      );
      ArticlesList.add(articleModel);
    }
    return ArticlesList;
  }
}
