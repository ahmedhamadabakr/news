import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, this.index});
  final int? index;
  @override
  Widget build(BuildContext context) {

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
            colors: [Colors.transparent, Colors.black.withAlpha(179)],
          ),
        ),

          ////////text child in container ////////////////
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'News Title ${index! + 1}',
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
  }
}
