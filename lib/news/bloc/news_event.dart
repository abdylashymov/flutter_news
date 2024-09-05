part of 'news_bloc.dart';

@immutable
sealed class NewsEvent {}

final class GetNewsEvent extends NewsEvent {
  GetNewsEvent(this.countryCode);
  final String countryCode;
}
