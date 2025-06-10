import 'package:flutter/material.dart';
import 'package:news/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5, // Replace with actual news count
        itemBuilder: (context, index) {
          return CategoryCard(index: index);
        },
      ),
    );
  }
}
