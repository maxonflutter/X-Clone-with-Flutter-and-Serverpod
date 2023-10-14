import 'package:xclone_client/xclone_client.dart';

class PostRepository {
  final Client client;

  PostRepository({required this.client});

  Future<List<Post>> getAllPosts() async {
    return await client.post.getAllPosts();
  }

  Future<void> createPost(Post post) async {
    await client.post.createPost(post);
  }

  Future<void> deletePost(Post post) async {
    await client.post.deletePost(post);
  }
}
