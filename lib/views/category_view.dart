import 'package:flutter/material.dart';
import 'package:news/widgets/news_list_view_bilder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});

  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [NewsListviewBilder(category: category)]),
    );
  }
}
