import 'package:serverpod/serverpod.dart';

import '../generated/post.dart';

class PostEndpoint extends Endpoint {
  Future<void> createPost(Session session, Post post) async {
    await Post.insert(session, post);
  }

  Future<void> deletePost(Session session, Post post) async {
    await Post.deleteRow(session, post);
  }

  Future<List<Post>> getAllPosts(Session session) async {
    return await Post.find(
      session,
      orderBy: Post.t.id,
    );
  }
}
