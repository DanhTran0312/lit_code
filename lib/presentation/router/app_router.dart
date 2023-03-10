import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lit_code/business_logic/blocs/bloc/app_bloc.dart';
import 'package:lit_code/business_logic/cubits/cubit/experience_cubit.dart';
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
    required ExperienceCubit experienceCubit,
  })  : _appBloc = appBloc,
        _onboardingCubit = onboardingCubit,
        _experienceCubit = experienceCubit;

  static const String experienceRoute = '/experience';
  static const String homeRoute = '/home';
  static const String initialRoute = '/';
  static const String onboardingRoute = '/onBoarding';
  static const String profileRoute = 'profile';
  static const String progressRoute = '/progress';
  static const String reviewRoute = '/review';
  static const String settingsRoute = '/settings';
  static const String signInRoute = '/signIn';
  static const String signUpRoute = '/signUp';
  static const String studyRoute = '/study';

  final AppBloc _appBloc;
  final ExperienceCubit _experienceCubit;
  final OnBoardingCubit _onboardingCubit;
  final _rootNavigatorKey = GlobalKey<NavigatorState>();
  late final GoRouter _router = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: initialRoute,
    routerNeglect: true,
    navigatorKey: _rootNavigatorKey,
    routes: routes,
  );

  final _shellNavigatorKey = GlobalKey<NavigatorState>();

  GoRouter get router => _router;

  List<RouteBase> get routes {
    return [
      GoRoute(
        path: initialRoute,
        pageBuilder: (context, state) {
          return MaterialPage(key: state.pageKey, child: const SignInScreen());
        },
        redirect: (context, state) {
          if (_onboardingCubit.state is OnBoardingNotCompleted) {
            return onboardingRoute;
          } else if (_appBloc.state is Authenticated) {
            return homeRoute;
          }
          return null;
        },
      ),
      GoRoute(
        name: 'signIn',
        path: signInRoute,
        redirect: (context, state) {
          if (_appBloc.state is Authenticated) {
            return homeRoute;
          }
          return null;
        },
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: const SignInScreen(),
            transitionDuration: const Duration(milliseconds: 450),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: CurvedAnimation(
                  parent: animation,
                  curve: Curves.easeIn,
                ),
                child: child,
              );
            },
          );
        },
      ),
      GoRoute(
        name: 'signUp',
        path: signUpRoute,
        pageBuilder: (context, state) {
          return MaterialPage(key: state.pageKey, child: const SignUpScreen());
        },
        redirect: (context, state) {
          if (_appBloc.state is Authenticated) {
            return homeRoute;
          }
          return null;
        },
      ),
      GoRoute(
        name: 'onBoarding',
        path: onboardingRoute,
        pageBuilder: (context, state) {
          return MaterialPage(
            key: state.pageKey,
            child: OnBoardingScreen(
              onboardingCubit: _onboardingCubit,
            ),
          );
        },
      ),
      GoRoute(
        name: 'experience',
        path: experienceRoute,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: ExperienceScreen(
              experienceCubit: _experienceCubit,
            ),
            transitionDuration: const Duration(milliseconds: 550),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: CurvedAnimation(
                  parent: animation,
                  curve: Curves.easeInOut,
                ),
                child: child,
              );
            },
          );
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
            parentNavigatorKey: _shellNavigatorKey,
            name: 'progress',
            path: progressRoute,
            pageBuilder: (context, state) {
              return _defaultScreenTransition(
                const ProgressScreen(),
                key: state.pageKey,
              );
            },
          ),
          GoRoute(
            parentNavigatorKey: _shellNavigatorKey,
            name: 'review',
            path: reviewRoute,
            pageBuilder: (context, state) {
              return _defaultScreenTransition(
                const ReviewScreen(),
                key: state.pageKey,
              );
            },
          ),
          GoRoute(
            parentNavigatorKey: _shellNavigatorKey,
            name: 'settings',
            path: settingsRoute,
            pageBuilder: (context, state) {
              return _defaultScreenTransition(
                const SettingsScreen(),
                key: state.pageKey,
              );
            },
            routes: [
              GoRoute(
                name: 'profile',
                path: profileRoute,
                pageBuilder: (context, state) {
                  return _defaultScreenTransition(
                    const ProfileScreen(),
                    key: state.pageKey,
                  );
                },
              ),
            ],
          ),
          GoRoute(
            parentNavigatorKey: _shellNavigatorKey,
            name: 'home',
            path: homeRoute,
            pageBuilder: (context, state) {
              return _defaultScreenTransition(
                const HomeScreen(),
                key: state.pageKey,
              );
            },
            redirect: (context, state) {
              if (_experienceCubit.state is ExperienceNotCompleted) {
                return experienceRoute;
              }
              return null;
            },
          ),
          GoRoute(
            parentNavigatorKey: _shellNavigatorKey,
            name: 'study',
            path: studyRoute,
            pageBuilder: (context, state) {
              return _defaultScreenTransition(
                const StudyScreen(),
                key: state.pageKey,
              );
            },
          ),
        ],
      ),
    ];
  }

  CustomTransitionPage<dynamic> _defaultScreenTransition(
    Widget child, {
    LocalKey? key,
  }) {
    return CustomTransitionPage(
      key: key,
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: CurvedAnimation(
            parent: animation,
            curve: Curves.easeInOut,
          ),
          child: child,
        );
      },
      transitionDuration: const Duration(milliseconds: 350),
    );
  }
}
