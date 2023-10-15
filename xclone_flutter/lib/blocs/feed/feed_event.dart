part of 'feed_bloc.dart';

abstract class FeedEvent extends Equatable {
  const FeedEvent();

  @override
  List<Object> get props => [];
}

class FeedLoadEvent extends FeedEvent {
  const FeedLoadEvent();
}

class FeedCreatePostEvent extends FeedEvent {
  final Post post;

  const FeedCreatePostEvent(this.post);

  @override
  List<Object> get props => [post];
}

class FeedDeletePostEvent extends FeedEvent {
  final Post post;

  const FeedDeletePostEvent(this.post);

  @override
  List<Object> get props => [post];
}
