import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'feed_event.dart';
part 'feed_state.dart';

class FeedBloc extends Bloc<FeedEvent, FeedState> {
  final PostRepository _postRepository;

  FeedBloc({required PostRepository postRepository})
      : _postRepository = postRepository,
        super(const FeedState()) {
    on<FeedLoadEvent>(_onLoadFeed);
    on<FeedCreateEvent>(_onCreatePost);
    on<FeedDeleteEvent>(_onDeletePost);
  }

  Future<void> _onLoadFeed(FeedLoadEvent event, Emitter<FeedState> emit) async {
    emit(state.copyWith(status: FeedStatus.Loading));
    try {
      List<Post> posts = await _postRepository.getAllPosts();
      emit(state.copyWith(status: FeedStatus.Loaded, posts: posts));
    } catch (err) {
      emit(state.copyWith(status: FeedStatus.Error));
    }
  }

  Future<void> _onCreatePost(FeedCreateEvent event, Emitter<FeedState> emit) async {
    try {
      await _postRepository.createPost(event.post);
      _onLoadFeed(FeedLoadEvent(), emit);
    } catch (err) {
      emit(state.copyWith(status: FeedStatus.Error));
    }
  }

  Future<void> _onDeletePost(FeedDeleteEvent event, Emitter<FeedState> emit) async {
    try {
      await _postRepository.deletePost(event.post);
      _onLoadFeed(FeedLoadEvent(), emit);
    } catch (err) {
      emit(state.copyWith(status: FeedStatus.Error));
    }
  }
}