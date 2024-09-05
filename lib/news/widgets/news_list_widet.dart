import 'package:flutter/material.dart';
import 'package:flutter_application_29_news_app/news/news.dart';

class NewsListWidet extends StatelessWidget {
  const NewsListWidet(this.news, {super.key});

  final List<Article> news;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: news.length,
      padding: const EdgeInsets.only(top: 20, bottom: 30),
      itemBuilder: (BuildContext context, int index) {
        return NewsCard(news[index]);
      },
    );
  }
}
