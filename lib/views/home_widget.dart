import 'package:flutter/material.dart';
import 'package:news/widgets/categoriselist_view.dart';
import 'package:news/widgets/news_list_view_bilder.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "News",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                  fontSize: 28,
                ),
              ),
              TextSpan(
                text: "App",
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: const CategoriesListView()),
            SliverToBoxAdapter(child: const SizedBox(height: 32)),
            NewsListviewBilder(),
          ],
        ),
      ),
    );
  }
}
