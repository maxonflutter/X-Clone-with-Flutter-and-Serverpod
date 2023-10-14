// import 'package:flutter/material.dart';
// import 'package:xclone_client/xclone_client.dart';
// import 'package:xclone_flutter/main.dart';

// class FeedScreen extends StatefulWidget {
//   const FeedScreen({super.key});

//   @override
//   State<FeedScreen> createState() => _FeedScreenState();
// }

// class _FeedScreenState extends State<FeedScreen> {
//   List<Post>? _posts;
//   Exception? _connectionException;

//   @override
//   void initState() {
//     super.initState();
//     _loadPosts();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('X Clone')),
//       floatingActionButton: _posts == null
//           ? null
//           : FloatingActionButton(
//               onPressed: () {
//                 showPostDialog(
//                   context: context,
//                   onSaved: (text) {
//                     var post = Post(
//                       caption: text,
//                       type: PostType.text,
//                       audience: PostAudienceSettings.everyone,
//                       reply: PostReplySettings.everyone,
//                       userId: 1,
//                       username: 'user1',
//                       profileImageUrl:
//                           'https://source.unsplash.com/random/?abstract',
//                     );

//                     _posts!.add(post);

//                     _createPost(post);
//                   },
//                 );
//               },
//               child: const Icon(Icons.add),
//             ),
//       body: _posts == null
//           ? Container()
//           : ListView.builder(
//               itemCount: _posts!.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Text(_posts![index].caption),
//                 );
//               },
//             ),
//     );
//   }

//   void _connectionFailed(dynamic exception) {
//     setState(() {
//       _posts = null;
//       _connectionException = exception;
//     });
//   }

//   Future<void> _loadPosts() async {
//     try {
//       final posts = await client.post.getAllPosts();
//       setState(() {
//         _posts = posts;
//       });
//     } catch (e) {
//       _connectionFailed(e);
//     }
//   }

//   Future<void> _createPost(Post post) async {
//     try {
//       await client.post.createPost(post);
//       await _loadPosts();
//     } catch (e) {
//       _connectionFailed(e);
//     }
//   }

//   void showPostDialog({
//     required BuildContext context,
//     String text = '',
//     required ValueChanged<String> onSaved,
//   }) {
//     showDialog(
//       context: context,
//       builder: (context) => PostDialog(
//         text: text,
//         onSaved: onSaved,
//       ),
//     );
//   }
// }

// class PostDialog extends StatefulWidget {
//   const PostDialog({
//     required this.text,
//     required this.onSaved,
//     super.key,
//   });

//   final String text;
//   final ValueChanged<String> onSaved;

//   @override
//   PostDialogState createState() => PostDialogState();
// }

// class PostDialogState extends State<PostDialog> {
//   final TextEditingController controller = TextEditingController();

//   @override
//   void initState() {
//     super.initState();
//     controller.text = widget.text;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             Expanded(
//               child: TextField(
//                 controller: controller,
//                 expands: true,
//                 maxLines: null,
//                 minLines: null,
//                 decoration: const InputDecoration(
//                   border: InputBorder.none,
//                   hintText: 'Write your post here...',
//                 ),
//               ),
//             ),
//             const SizedBox(height: 16),
//             ElevatedButton(
//               onPressed: () {
//                 widget.onSaved(controller.text);
//                 Navigator.of(context).pop();
//               },
//               child: const Text('Save'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
