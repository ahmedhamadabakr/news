import 'package:flutter/material.dart';
import 'package:news/widgets/categoriseList_view.dart';

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

      body: SingleChildScrollView(
        child: Column(
          children: [
            CategoriesListView(),

            ////////////////////////////////////////////////////////////
            // Vertical scrolling content
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 10, // Replace with actual content count
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.all(8),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://picsum.photos/50/50?random=$index',
                      ),
                    ),
                    title: Text('Content Title ${index + 1}'),
                    subtitle: Text('Content description goes here...'),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
