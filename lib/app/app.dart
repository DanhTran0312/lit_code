import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lit_code/business_logic/blocs/bloc/app_bloc.dart';
import 'package:lit_code/business_logic/blocs/bloc/question_list_bloc.dart';
import 'package:lit_code/business_logic/cubits/cubit/bottom_nav_bar_cubit.dart';
import 'package:lit_code/business_logic/cubits/cubit/network_connection_cubit.dart';
import 'package:lit_code/business_logic/cubits/cubit/question_completed_cubit.dart';
import 'package:lit_code/business_logic/cubits/cubit/theme_cubit.dart';
import 'package:lit_code/data/repositories/repositories.dart';
import 'package:lit_code/presentation/router/app_router.dart';
import 'package:lit_code/theme/theme.dart';

class LitCodeApp extends StatefulWidget {
  const LitCodeApp({
    super.key,
    required AuthRepository authRepository,
    required AppBloc appBloc,
    required ThemeCubit themeCubit,
    required NetworkConnectionCubit networkConnectionCubit,
    required BottomNavBarCubit bottomNavBarCubit,
    required QuestionListBloc questionListBloc,
    required QuestionCompletedCubit questionCompletedCubit,
    required UserRepository userRepository,
  })  : _authRepository = authRepository,
        _appBloc = appBloc,
        _themeCubit = themeCubit,
        _networkConnectionCubit = networkConnectionCubit,
        _bottomNavBarCubit = bottomNavBarCubit,
        _questionListBloc = questionListBloc,
        _questionCompletedCubit = questionCompletedCubit,
        _userRepository = userRepository;

  final AuthRepository _authRepository;
  final UserRepository _userRepository;
  final AppBloc _appBloc;
  final ThemeCubit _themeCubit;
  final NetworkConnectionCubit _networkConnectionCubit;
  final BottomNavBarCubit _bottomNavBarCubit;
  final QuestionListBloc _questionListBloc;
  final QuestionCompletedCubit _questionCompletedCubit;

  @override
  State<LitCodeApp> createState() => _LitCodeAppState();
}

class _LitCodeAppState extends State<LitCodeApp> {
  @override
  void dispose() {
    widget._userRepository.dispose();
    super.dispose();
  }

  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => widget._authRepository,
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AppBloc>(
            create: (context) => widget._appBloc,
          ),
          BlocProvider<ThemeCubit>(
            create: (context) => widget._themeCubit,
          ),
          BlocProvider<NetworkConnectionCubit>(
            create: (context) => widget._networkConnectionCubit,
          ),
          BlocProvider<BottomNavBarCubit>(
            create: (context) => widget._bottomNavBarCubit,
          ),
          BlocProvider<QuestionListBloc>(
            create: (context) => widget._questionListBloc,
          ),
          BlocProvider<QuestionCompletedCubit>(
            create: (context) => widget._questionCompletedCubit,
          ),
        ],
        child: BlocListener<AppBloc, AppState>(
          listener: (context, state) {
            if (state is Authenticated) {
              appRouter.router.goNamed('home');
            } else if (state is Unauthenticated) {
              appRouter.router.goNamed('signIn');
            }
          },
          child: Builder(
            builder: (context) {
              return MaterialApp.router(
                debugShowCheckedModeBanner: false,
                theme: BlocProvider.of<ThemeCubit>(context).isDark
                    ? darkAppTheme
                    : lightAppTheme,
                routerConfig: appRouter.router,
              );
            },
          ),
        ),
      ),
    );
  }
}
