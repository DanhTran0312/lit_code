import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lit_code/business_logic/blocs/bloc/app_bloc.dart';
import 'package:lit_code/business_logic/cubits/cubit/on_boarding_cubit.dart';
import 'package:lit_code/presentation/screens/screens.dart';
import 'package:lit_code/presentation/widgets/persisted_bottom_nav_bar.dart';

/// The [GoRouter] that is used to navigate through the app.
///
/// The [GoRouter] is used to navigate through the app. It uses the
/// routes defined in the [routes] property to determine how to navigate
/// through the app.
///
/// The [GoRouter] is also used to determine the initial location of the app
/// as well as the initial route to display.

class AppRouter {
  AppRouter({
    required AppBloc appBloc,
    required OnBoardingCubit onboardingCubit,
  })  : _appBloc = appBloc,
        _onboardingCubit = onboardingCubit;

  static const String initialRoute = '/';
  static const String settingsRoute = '/settings';
  static const String homeRoute = '/home';
  static const String studyRoute = '/study';
  static const String progressRoute = '/progress';
  static const String reviewRoute = '/review';
  static const String profileRoute = 'profile';
  static const String signInRoute = '/signIn';
  static const String signUpRoute = '/signUp';
  static const String onboardingRoute = '/onBoarding';

  final _shellNavigatorKey = GlobalKey<NavigatorState>();
  final _rootNavigatorKey = GlobalKey<NavigatorState>();

  GoRouter get router => _router;
  final AppBloc _appBloc;
  final OnBoardingCubit _onboardingCubit;

  late final GoRouter _router = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: initialRoute,
    routerNeglect: true,
    navigatorKey: _rootNavigatorKey,
    routes: routes,
  );

  List<RouteBase> get routes {
    return [
      GoRoute(
        path: initialRoute,
        pageBuilder: (context, state) {
          return const MaterialPage(child: SignInScreen());
        },
        redirect: (context, state) {
          if (_onboardingCubit.state is OnBoardingNotCompleted) {
            return onboardingRoute;
          }
          if (_appBloc.state is Authenticated) {
            return homeRoute;
          }
          return null;
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
      GoRoute(
        name: 'onBoarding',
        path: onboardingRoute,
        pageBuilder: (context, state) {
          return const MaterialPage(child: OnBoardingScreen());
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
    ];
  }
}
