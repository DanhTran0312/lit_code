import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lit_code/business_logic/blocs/bloc/app_bloc.dart';
import 'package:lit_code/presentation/router/initial_route_builder.dart';
import 'package:lit_code/presentation/screens/screens.dart';
import 'package:lit_code/presentation/widgets/persisted_bottom_nav_bar.dart';

class AppRouter {
  static const String initialRoute = '/';
  static const String settingsRoute = '/settings';
  static const String homeRoute = '/home';
  static const String studyRoute = '/study';
  static const String progressRoute = '/progress';
  static const String reviewRoute = '/review';
  static const String profileRoute = 'profile';
  static const String signInRoute = '/signIn';
  static const String signUpRoute = '/signUp';

  final _shellNavigatorKey = GlobalKey<NavigatorState>();
  final _rootNavigatorKey = GlobalKey<NavigatorState>();

  GoRouter get router => _router;

  late final GoRouter _router = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: initialRoute,
    routerNeglect: true,
    navigatorKey: _rootNavigatorKey,
    routes: [
      GoRoute(
        path: initialRoute,
        pageBuilder: (context, state) {
          return const MaterialPage(child: SignInScreen());
        },
      ),
      GoRoute(
        name: 'signIn',
        path: signInRoute,
        pageBuilder: (context, state) {
          return MaterialPage(key: state.pageKey, child: const SignInScreen());
        },
      ),
      GoRoute(
        name: 'signUp',
        path: signUpRoute,
        pageBuilder: (context, state) {
          return const MaterialPage(child: SignUpScreen());
        },
      ),
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return Scaffold(
            body: child,
            extendBody: true,
            bottomNavigationBar: const PersistedBottomNavBar(),
          );
        },
        routes: [
          GoRoute(
            name: 'progress',
            path: progressRoute,
            pageBuilder: (context, state) {
              return const MaterialPage(child: ProgressScreen());
            },
          ),
          GoRoute(
            name: 'review',
            path: reviewRoute,
            pageBuilder: (context, state) {
              return const MaterialPage(child: ReviewScreen());
            },
          ),
          GoRoute(
            name: 'settings',
            path: settingsRoute,
            pageBuilder: (context, state) {
              return const MaterialPage(child: SettingsScreen());
            },
          ),
          GoRoute(
            name: 'home',
            path: homeRoute,
            pageBuilder: (context, state) {
              return const MaterialPage(child: HomeScreen());
            },
            routes: [
              GoRoute(
                name: 'profile',
                path: profileRoute,
                pageBuilder: (context, state) {
                  return const MaterialPage(child: ProfileScreen());
                },
              ),
            ],
          ),
          GoRoute(
            name: 'study',
            path: studyRoute,
            pageBuilder: (context, state) {
              return const MaterialPage(child: StudyScreen());
            },
          ),
        ],
      ),
    ],
  );
}
