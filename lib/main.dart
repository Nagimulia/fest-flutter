import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:task/pages/profile_page.dart';

import 'package:task/services/auth/login_register.dart';
import 'package:task/firebase_options.dart';
import 'package:task/models/shop.dart';
import 'package:task/pages/favorite_page.dart';

import 'package:task/pages/settings_page.dart';
import 'package:task/provider/favorite_provider.dart';
import 'package:task/provider/theme_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => Shop(),
      ),
      ChangeNotifierProvider(
        create: (context) => FavoriteProvider(),
      ),
      
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}

final GoRouter _router = GoRouter(
  initialLocation: '/loginregister',
  routes: <RouteBase>[
    GoRoute(
        name: '/loginregister',
        path: '/loginregister',
        builder: (context, state) {
          return const LoginRegister();
        }),
    GoRoute(
        name: '/settings',
        path: '/settings',
        builder: (context, state) {
          return const SettingPage();
        }),
    GoRoute(
        name: '/favorite',
        path: '/favorite',
        builder: (context, state) {
          return const Favorite();
        }),
    GoRoute(
        name: '/profile',
        path: '/profile',
        builder: (context, state) {
          return const ProfilePage();
        }),
  ],
);
