import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_29_news_app/news/news.dart';

// .    Member access
// ..   cacade method
// ...  spread

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsBloc(Dio())..add(GetNewsEvent('us')),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xffFE5722),
          ),
          useMaterial3: true,
        ),
        home: const NewsView(),
      ),
    );
  }
}
