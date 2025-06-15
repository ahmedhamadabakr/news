import 'package:flutter/material.dart';

class Errorview extends StatelessWidget {
  const Errorview({super.key, required this.textError});

  final textError;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Center(
        child: Text(
          textError,
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.red[700],
            letterSpacing: 1.2,
          ),
        ),
      ),
    );
  }
}
