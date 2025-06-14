// import 'package:flutter/material.dart';
// import 'package:news/model/article_model.dart';
// import 'package:news/services/news_servce.dart';
// import 'package:news/widgets/newsList_view.dart';
// import 'package:shimmer/shimmer.dart';

// class TilelistView extends StatefulWidget {
//   const TilelistView({super.key});

//   @override
//   State<TilelistView> createState() => _TilelistViewState();
// }

// class _TilelistViewState extends State<TilelistView> {
//   List<ArticleModel> articles = [];
//   bool isLoading = true;
//   @override
//   void initState() {
//     super.initState();
//     getGeneralNews();
//   }

//   Future<void> getGeneralNews() async {
//     articles = await NewsServce().getNews();
//     isLoading = false;
//     setState(() {}); //up date data in articles list
//   }

//   @override
//   Widget build(BuildContext context) {
//     //call evry time run
//     return isLoading
//         ? SliverList(
//           delegate: SliverChildBuilderDelegate(
//             (context, index) => Padding(
//               padding: EdgeInsets.all(16),
//               child: Shimmer.fromColors(
//                 baseColor: Colors.grey[300]!,
//                 highlightColor: Colors.grey[100]!,
//                 child: Container(
//                   height: 100,
//                   width: double.infinity,
//                   color: Colors.black,
//                 ),
//               ),
//             ),
//             childCount: 5,
//           ),
//         )
//         : SliverList(
//           delegate: SliverChildBuilderDelegate(childCount: articles.length, (
//             context,
//             index,
//           ) {
//             return NewslistView(articleModel: articles[index]);
//           }),
//         );
//   }
// }
