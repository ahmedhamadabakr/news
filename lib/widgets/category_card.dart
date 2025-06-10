import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: const DecorationImage(
          image: AssetImage('assets/business.avif'),
          fit: BoxFit.fill,
        ),
      ),
      child: const Text(
        "Business",
        style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
      ),
    
    );
  }
}
