import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spotify_clone/pages/main_page.dart';
import 'package:spotify_clone/themes/default_spotify.dart';

void main() {
  runApp(const MyApp());
}

final _router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const MainPage(),
      // pageBuilder: defaultPageBuilder(const AuthPage())
    ),
    GoRoute(
      path: '/mainpage',
      builder: (context, state) => const MainPage(),
      // pageBuilder: defaultPageBuilder(HomePage())
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: defaultSpotifyTheme,
      routerConfig: _router,
    );
  }
}