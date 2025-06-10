import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            // Horizontal scrolling news section
            Container(
              height: 200,
              child: ListView.builder(
              scrollDirection: Axis.horizontal,

        ////////////////// add image ///////////

                itemCount: 5, // Replace with actual news count
                itemBuilder: (context, index) {
                  return Container(
                    width: 300,
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: NetworkImage('https://picsum.photos/300/200?random=$index'),
                        fit: BoxFit.cover,
                      ),
                    ),

/////////////////////////// gradient  /////////////////
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black.withOpacity(0.7),
                          ],
                        ),
                      ),

                  ////////text////////////////
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'News Title ${index + 1}',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
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
                      backgroundImage: NetworkImage('https://picsum.photos/50/50?random=$index'),
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
