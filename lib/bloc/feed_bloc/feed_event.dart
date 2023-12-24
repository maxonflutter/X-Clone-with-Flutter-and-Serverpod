part of 'feed_bloc.dart';

import 'package:equatable/equatable.dart';

abstract class FeedEvent extends Equatable {
  const FeedEvent();

  @override
  List<Object> get props => [];
}

class FeedLoadEvent extends FeedEvent {}

class FeedCreateEvent extends FeedEvent {
  final Post post;

  const FeedCreateEvent(this.post);

  @override
  List<Object> get props => [post];
}

class FeedDeleteEvent extends FeedEvent {
  final Post post;

  const FeedDeleteEvent(this.post);

  @override
  List<Object> get props => [post];
}