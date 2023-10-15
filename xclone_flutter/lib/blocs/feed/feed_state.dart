part of 'feed_bloc.dart';

enum FeedStatus { initial, loading, loaded, error }

class FeedState extends Equatable {
  final FeedStatus status;
  final List<Post> posts;

  const FeedState({
    this.status = FeedStatus.initial,
    this.posts = const [],
  });

  FeedState copyWith({
    FeedStatus? status,
    List<Post>? posts,
  }) {
    return FeedState(
      status: status ?? this.status,
      posts: posts ?? this.posts,
    );
  }

  @override
  List<Object?> get props => [status, posts];
}
