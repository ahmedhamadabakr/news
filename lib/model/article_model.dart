class ArticleModel {
  final String? image;
  final String title;
  final String? subTitle;
  final String? content;
  final String? publishedAt;
  final String? description;

  ArticleModel({
    required this.image,
    required this.title,
    required this.subTitle,
    this.content,
    this.publishedAt,
    this.description,
  });
}
