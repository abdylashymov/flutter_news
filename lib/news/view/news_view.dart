import 'package:flutter/material.dart';
import 'package:flutter_application_29_news_app/news/news.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        title: const Text('News App'),
        actions: [
          PopupMenuButton(
            icon: const Icon(Icons.more_vert_outlined),
            onSelected: (v) {
              context.read<NewsBloc>().add(GetNewsEvent(v));
            },
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem<String>(
                  value: 'us',
                  child: Text('USA'),
                ),
                const PopupMenuItem<String>(
                  value: 'ru',
                  child: Text('Россия'),
                ),
                const PopupMenuItem<String>(
                  value: 'eg',
                  child: Text('مصر'),
                ),
                const PopupMenuItem<String>(
                  value: 'kr',
                  child: Text('대한민국'),
                ),
              ];
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: BlocBuilder<NewsBloc, NewsState>(
          builder: (context, state) {
            return switch (state) {
              NewsInitial() || NewsLoading() => const Appindicator(),
              NewsSuccess() => NewsListWidet(state.news),
              NewsFailed() => ErrorView(state.errorMessage)
            };
          },
        ),
      ),
    );
  }
}
