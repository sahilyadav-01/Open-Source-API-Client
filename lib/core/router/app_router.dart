import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../features/auth/presentation/login_screen.dart';
import '../../features/profile/presentation/profile_screen.dart';
import '../../features/repositories/presentation/repos_screen.dart';
import '../../features/settings/presentation/settings_screen.dart';
import '../../features/repository_detail/presentation/repo_detail_screen.dart';
import '../../features/followers/presentation/followers_screen.dart';
import '../../features/following/presentation/following_screen.dart';
import '../../features/starred/presentation/starred_screen.dart';
import '../../features/search/presentation/search_screen.dart';
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
          GoRoute(
            path: '/followers',
            builder: (context, state) => const FollowersScreen(),
          ),
          GoRoute(
            path: '/following',
            builder: (context, state) => const FollowingScreen(),
          ),
          GoRoute(
            path: '/starred',
            builder: (context, state) => const StarredScreen(),
          ),
          GoRoute(
            path: '/search',
            builder: (context, state) => const SearchScreen(),
          ),
        ],
      ),
      GoRoute(
        path: '/repo_detail',
        builder: (context, state) => const RepoDetailScreen(),
      ),
    ],
  );
}
