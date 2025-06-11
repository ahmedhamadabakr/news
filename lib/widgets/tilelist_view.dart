import 'package:flutter/material.dart';
import 'package:news/widgets/news_tile.dart';

class TilelistView extends StatelessWidget {
  const TilelistView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: 10, (context, index) {
        return NewsTile();
      }),
    );
  }
}
