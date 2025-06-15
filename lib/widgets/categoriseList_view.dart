import 'package:flutter/material.dart';
import 'package:news/model/item_model.dart';
import 'package:news/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  final List<ItemModel> categoris = const [
    ItemModel(image: "assets/business.avif", titleNews: "Business"),
    ItemModel(image: "assets/entertaiment.avif", titleNews: "Entertaiment"),
    ItemModel(image: "assets/general.avif", titleNews: "general"),
    ItemModel(image: "assets/health.avif", titleNews: "Health"),
    ItemModel(image: "assets/science.avif", titleNews: "Science"),
    ItemModel(image: "assets/sports.avif", titleNews: "Sports"),
    ItemModel(image: "assets/technology.jpeg", titleNews: "technology"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoris.length, // Replace with actual news count
        itemBuilder: (context, index) {
          return CategoryCard(
            category: categoris[index],
           
          );
        },
      ),
    );
  }
}
