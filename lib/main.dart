import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news/services/news_servce.dart';
import 'package:news/views/home_widget.dart';

void main() {
  NewsServce(Dio()).getNews();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeWidget());
  }
}
