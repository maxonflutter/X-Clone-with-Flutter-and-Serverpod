import 'package:flutter/material.dart';

class PostStats extends StatelessWidget {
  const PostStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(Icons.comment_outlined),
            SizedBox(width: 4.0),
            Text('6'),
          ],
        ),
        Row(
          children: [
            Icon(Icons.compare_arrows_outlined),
            SizedBox(width: 4.0),
            Text('6'),
          ],
        ),
        Row(
          children: [
            Icon(Icons.favorite_outline),
            SizedBox(width: 4.0),
            Text('6'),
          ],
        ),
        Row(
          children: [
            Icon(Icons.stacked_bar_chart_outlined),
            SizedBox(width: 4.0),
            Text('6'),
          ],
        ),
        IconButton(
          visualDensity: VisualDensity.compact,
          onPressed: () {},
          icon: Icon(Icons.ios_share_outlined),
        ),
      ],
    );
  }
}
