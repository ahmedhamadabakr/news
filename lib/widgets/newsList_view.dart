import 'package:flutter/material.dart';
import 'package:news/model/article_model.dart';
import 'package:news/views/news_detils_view.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key, required this.articleModel});

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return NewsDetilsView(article: articleModel, category: 'general');
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.network(
                articleModel.image ??
                    "https://www.pinterest.com/pin/227220743689156390/",
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              articleModel.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),

            Text(
              articleModel.subTitle ?? "",
              style: TextStyle(
                color: Colors.grey,
                overflow: TextOverflow.ellipsis,

                fontSize: 13,
                fontWeight: FontWeight.w500,
                backgroundColor: const Color.fromARGB(27, 72, 71, 71),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
