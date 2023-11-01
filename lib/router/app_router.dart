import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../screens/feed_screen.dart';
import '../screens/new_post_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/edit_profile_screen.dart';

class AppRouter {
  AppRouter();

  late final GoRouter router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        name: 'feed',
        path: '/feed',
        builder: (BuildContext context, GoRouterState state) {
          return const FeedScreen();
        },
        routes: [
          GoRoute(
            name: 'new-post',
            path: '/new-post',
            builder: (BuildContext context, GoRouterState state) {
              return const NewPostScreen();
            },
          ),
        ],
      ),
      GoRoute(
        name: 'profile',
        path: '/profile',
        builder: (BuildContext context, GoRouterState state) {
          return const ProfileScreen();
        },
        routes: [
          GoRoute(
            name: 'edit-profile',
            path: '/edit-profile',
            builder: (BuildContext context, GoRouterState state) {
              return const EditProfileScreen();
            },
          ),
        ],
      ),
    ],
  );
}