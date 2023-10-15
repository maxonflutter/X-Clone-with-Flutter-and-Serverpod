import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';
import 'package:xclone_client/xclone_client.dart';

import 'blocs/feed/feed_bloc.dart';
import 'repositories/post_repository.dart';
import 'screens/feed_screen.dart';

// Sets up a singleton client object that can be used to talk to the server from
// anywhere in our app. The client is generated from your server code.
// The client is set up to connect to a Serverpod running on a local server on
// the default port. You will need to modify this to connect to staging or
// production servers.
var client = Client('http://localhost:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

void main() {
  final postRepository = PostRepository(client: client);
  runApp(
    MyApp(postRepository: postRepository),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    required this.postRepository,
  });

  final PostRepository postRepository;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(value: postRepository),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => FeedBloc(postRepository: postRepository)
              ..add(const FeedLoadEvent()),
          ),
        ],
        child: MaterialApp(
          title: 'X Clone with Flutter and Serverpod',
          theme: ThemeData(
            textSelectionTheme: const TextSelectionThemeData(
              cursorColor: Color(0xFFe3e2e6),
            ),
            colorScheme: SeedColorScheme.fromSeeds(
              brightness: Brightness.dark,
              primaryKey: const Color(0xFF4A98E9),
              secondaryKey: const Color(0xFF000000),
              tones: FlexTones.vivid(Brightness.dark),
            ),
            useMaterial3: true,
          ),
          initialRoute: '/feed',
          routes: {
            // '/': (context) => const OnboardingScreen(),
            '/feed': (context) => const FeedScreen(),
            // '/create': (context) => const CreatePostScreen(),
            // '/profile': (context) => const ProfileScreen(),
            // '/edit-profile': (context) => const EditProfileScreen(),
            // '/follow': (context) => const FollowScreen(),
          },
        ),
      ),
    );
  }
}
