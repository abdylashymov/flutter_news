import 'package:json_annotation/json_annotation.dart';

part 'news_model.g.dart';

@JsonSerializable()
class NewModel {
  const NewModel({
    required this.status,
    required this.totalResults,
    required this.articles,
  });

  factory NewModel.fromJson(Map<String, dynamic> json) =>
      _$NewModelFromJson(json);
  Map<String, dynamic> toJson() => _$NewModelToJson(this);

  final String status;
  final int totalResults;
  final List<Article> articles;
}

@JsonSerializable()
class Article {
  const Article({
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleToJson(this);

  final String? author;
  final String title;
  final String? description;
  final String url;
  final String? urlToImage;
  final DateTime publishedAt;
  final String? content;
}
