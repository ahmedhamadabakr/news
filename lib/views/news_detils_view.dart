import 'package:flutter/material.dart';
import 'package:news/model/article_model.dart';
import 'package:news/widgets/news_list_view_bilder.dart';

class NewsDetilsView extends StatelessWidget {
  final ArticleModel article;
  final String category;

  const NewsDetilsView({
    super.key,
    required this.article,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(article.title), elevation: 0),
      body: CustomScrollView(
        slivers: [
          // Main news image
          if (article.image != null)
            SliverToBoxAdapter(
              child: Image.network(
                article.image!,
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),

          // News content
          SliverPadding(
            padding: const EdgeInsets.all(16.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                Text(
                  article.title,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                if (article.publishedAt != null)
                  Text(
                    article.publishedAt!,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                const SizedBox(height: 8),
                if (article.subTitle != null)
                  Text(
                    article.subTitle!,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                const SizedBox(height: 4),
                if (article.content != null)
                  Text(
                    article.content!,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
              ]),
            ),
          ),

          // Similar news section header
          const SliverPadding(
            padding: EdgeInsets.all(16.0),
          
            sliver: SliverToBoxAdapter(
              child: Text(
                'Similar News',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.grey,
                ),
              ),
            ),
          ),

          NewsListviewBilder(
            category: "general",
          ), // We'll need to pass similar news here
        ],
      ),
    );
  }
}
