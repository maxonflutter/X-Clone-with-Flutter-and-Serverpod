import 'package:flutter/material.dart';
import 'package:xclone_client/xclone_client.dart';

import 'post_more_actions_modal.dart';
import 'post_stats.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({
    super.key,
    required this.post,
  });

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        top: 16.0,
        bottom: 8.0,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.white.withAlpha(200),
            width: 0.5,
          ),
        ),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                  post.profileImageUrl,
                ),
              ),
              const SizedBox(width: 16.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              post.username,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(width: 8.0),
                            const Icon(
                              Icons.verified,
                              size: 16,
                            ),
                            const SizedBox(width: 4.0),
                            Text(
                              '@handle - Sep 28',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: Colors.white.withAlpha(100)),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return const PostMoreActionsModal();
                              },
                            );
                          },
                          customBorder: const CircleBorder(),
                          child: const Icon(Icons.more_horiz),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4.0),
                    Text(post.caption),
                    const SizedBox(height: 8.0),
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                          color: Colors.white.withAlpha(200),
                          width: 0.5,
                        ),
                      ),
                      child: Image.network(
                        post.imageUrl ?? 'http://via.placeholder.com/350x150',
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    const PostStats(),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
