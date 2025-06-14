import 'package:flutter/material.dart';
import 'package:news/model/article_model.dart';

class NewslistView extends StatelessWidget {
  const NewslistView({super.key, required this.articleModel});

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              articleModel.image ??
                  "https://res.cloudinary.com/dordxtndf/image/upload/v1661122713/bo3qar/%D8%A8%D9%88%D8%B9%D9%82%D8%A7%D8%B1_%D8%A7%D9%84%D9%83%D9%88%D9%8A%D8%AA_yqaok3.jpg",
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
    );
  }
}
