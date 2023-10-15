import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/feed/feed_bloc.dart';
import '../widgets/post/post_widget.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Image.asset('assets/images/logo.png', height: 50),
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(56.0),
            child: TabBar(
              tabs: [
                Tab(text: 'For you'),
                Tab(text: 'Following'),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/create');
          },
          child: const Icon(Icons.post_add, color: Colors.white),
        ),
        body: TabBarView(
          children: [
            _FeedForYouTab(),
            _FeedFollowingTab(),
          ],
        ),
      ),
    );
  }
}

class _FeedForYouTab extends StatelessWidget {
  const _FeedForYouTab();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeedBloc, FeedState>(
      builder: (context, state) {
        if (state.status == FeedStatus.initial ||
            state.status == FeedStatus.loading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state.status == FeedStatus.loaded) {
          return SingleChildScrollView(
            child: Column(
              children: [
                for (var post in state.posts) PostWidget(post: post),
              ],
            ),
          );
        } else {
          return const Center(child: Text('Error loading posts'));
        }
      },
    );
  }
}

class _FeedFollowingTab extends StatelessWidget {
  const _FeedFollowingTab();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeedBloc, FeedState>(
      builder: (context, state) {
        if (state.status == FeedStatus.initial ||
            state.status == FeedStatus.loading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state.status == FeedStatus.loaded) {
          return Center(child: Text('Following'));
        } else {
          return const Center(child: Text('Error loading posts'));
        }
      },
    );
  }
}
