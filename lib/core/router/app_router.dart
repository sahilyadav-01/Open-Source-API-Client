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

import '../../features/auth/presentation/auth_controller.dart';

part 'app_router.g.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellNavigatorKey = GlobalKey<NavigatorState>();

@riverpod
GoRouter appRouter(AppRouterRef ref) {
  final authState = ref.watch(authControllerProvider);

  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/profile',
    redirect: (context, state) {
      final username = authState.valueOrNull;
      final isAuth = username != null;
      final isLoggingIn = state.uri.toString() == '/login';

      if (!isAuth && !isLoggingIn) return '/login';
      if (isAuth && isLoggingIn) return '/profile';
      
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
            builder: (context, state) {
              final username = ref.read(authControllerProvider).valueOrNull ?? 'sahilyadav-01';
              return ProfileScreen(username: username);
            },
          ),
          GoRoute(
            path: '/repos',
            builder: (context, state) {
              final username = ref.read(authControllerProvider).valueOrNull ?? 'sahilyadav-01';
              return ReposScreen(username: username);
            },
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
        builder: (context, state) {
          final extra = state.extra as Map<String, dynamic>? ?? {};
          final owner = extra['owner'] as String? ?? '';
          final repoName = extra['repoName'] as String? ?? '';
          return RepoDetailScreen(owner: owner, repoName: repoName);
        },
      ),
    ],
  );
}
