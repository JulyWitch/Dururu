import 'package:dururu/presentation/album.dart';
import 'package:dururu/presentation/album_list.dart';
import 'package:dururu/presentation/artist.dart';
import 'package:dururu/presentation/genre.dart';
import 'package:dururu/presentation/login.dart';
import 'package:dururu/presentation/main.dart';
import 'package:dururu/presentation/queue.dart';
import 'package:dururu/presentation/widgets/player_bar.dart';
import 'package:dururu/providers/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:just_audio_background/just_audio_background.dart';

Future<void> main() async {
  await JustAudioBackground.init(
    androidNotificationChannelId: 'com.example.dururu',
    androidNotificationChannelName: 'Dururu Playback',
    androidNotificationOngoing: true,
  );
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  late final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginPage(),
      ),
      ShellRoute(
        builder: (context, state, child) => PlayerBarShellLayout(child: child),
        routes: [
          GoRoute(
            path: '/',
            builder: (context, state) => const MainPage(),
            redirect: (context, state) async {
              if ((await ref.read(authProvider.future)) == null) {
                return '/login';
              }
              return null;
            },
          ),
          GoRoute(
            path: '/albums/:albumId',
            builder: (context, state) => AlbumPage(
              albumId: state.pathParameters['albumId']!,
            ),
          ),
          GoRoute(
            path: '/genres/:genre',
            builder: (context, state) => GenrePage(
              genre: state.pathParameters['genre']!,
            ),
          ),
          GoRoute(
            path: '/artists/:artistId',
            builder: (context, state) => ArtistPage(
              id: state.pathParameters['artistId']!,
              name: state.extra as String,
            ),
          ),
          GoRoute(
            path: '/albums',
            builder: (context, state) => AlbumListPage(
              type: state.uri.queryParameters['type']!,
              title: state.uri.queryParameters['title']!,
            ),
          ),
          GoRoute(
            path: '/queue',
            builder: (context, state) => const QueuePage(),
          ),
        ],
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Dururu',
      routerConfig: _router,
      theme: buildTheme(),
    );
  }
}

ThemeData buildTheme() {
  const primaryColor =
      Color(0xFF1DB954); // Vibrant green for excitement (Spotify-like)
  const accentColor = Color(0xFFFFC107); // Bright amber for highlights
  const backgroundColor = Color(
      0xFF121212); // Dark background for comfort (especially in low light)
  const cardColor = Color(0xFF1E1E1E); // Slightly lighter than background

  return ThemeData(
    brightness: Brightness.dark,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: backgroundColor,
    cardColor: cardColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: backgroundColor,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
      iconTheme: IconThemeData(color: Colors.white),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: primaryColor,
      textTheme: ButtonTextTheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: primaryColor,
        textStyle: const TextStyle(fontWeight: FontWeight.bold),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: accentColor,
        textStyle: const TextStyle(fontWeight: FontWeight.bold),
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
      foregroundColor: Colors.white,
    ),
    textTheme: TextTheme(
      displayLarge: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      displayMedium: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: Colors.white.withOpacity(0.87),
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: Colors.white.withOpacity(0.87),
      ),
      titleMedium: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: accentColor,
      ),
    ),
    iconTheme: const IconThemeData(color: Colors.white),
    sliderTheme: SliderThemeData(
      activeTrackColor: primaryColor,
      inactiveTrackColor: primaryColor.withOpacity(0.3),
      thumbColor: primaryColor,
      overlayColor: primaryColor.withOpacity(0.2),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: cardColor,
      selectedItemColor: primaryColor,
      unselectedItemColor: Colors.white.withOpacity(0.6),
      selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
      unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal),
    ),
    dialogTheme: DialogTheme(
      backgroundColor: cardColor,
      titleTextStyle: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
      contentTextStyle: TextStyle(
        color: Colors.white.withOpacity(0.87),
        fontSize: 16,
      ),
    ),
  );
}
