import 'package:flutter/material.dart';
import 'package:news/widgets/news_tile.dart';

class TilelistView extends StatelessWidget {
  const TilelistView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),

      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 16),
          child: NewsTile(),
        );
      },
    );
  }
}
