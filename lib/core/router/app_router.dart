import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../features/auth/presentation/login_screen.dart';
import '../../features/profile/presentation/profile_screen.dart';
import '../../features/repositories/presentation/repos_screen.dart';
import '../../features/settings/presentation/settings_screen.dart';
import '../widgets/main_scaffold.dart';

part 'app_router.g.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellNavigatorKey = GlobalKey<NavigatorState>();

@riverpod
GoRouter appRouter(AppRouterRef ref) {
  // We can add auth state listener here to redirect.
  // For now, we mock auth state.
  final isAuthenticated = true;

  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/profile',
    redirect: (context, state) {
      if (!isAuthenticated && state.uri.path != '/login') {
        return '/login';
      }
      return null;
    },
    routes: [
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginScreen(),
      ),
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) => MainScaffold(child: child),
        routes: [
          GoRoute(
            path: '/profile',
            builder: (context, state) => const ProfileScreen(username: 'sahilyadav-01'),
          ),
          GoRoute(
            path: '/repos',
            builder: (context, state) => const ReposScreen(username: 'sahilyadav-01'),
          ),
          GoRoute(
            path: '/settings',
            builder: (context, state) => const SettingsScreen(),
          ),
        ],
      ),
    ],
  );
}
