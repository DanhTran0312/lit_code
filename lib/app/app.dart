import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lit_code/business_logic/blocs/bloc/app_bloc.dart';
import 'package:lit_code/business_logic/blocs/bloc/question_list_bloc.dart';
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
    required QuestionListBloc questionListBloc,
    required QuestionCompletedCubit questionCompletedCubit,
    required UserRepository userRepository,
    required AppRouter appRouter,
  })  : _authRepository = authRepository,
        _appBloc = appBloc,
        _themeCubit = themeCubit,
        _networkConnectionCubit = networkConnectionCubit,
        _questionListBloc = questionListBloc,
        _questionCompletedCubit = questionCompletedCubit,
        _userRepository = userRepository,
        _appRouter = appRouter;
  final AuthRepository _authRepository;
  final UserRepository _userRepository;
  final AppBloc _appBloc;
  final ThemeCubit _themeCubit;
  final NetworkConnectionCubit _networkConnectionCubit;
  final QuestionListBloc _questionListBloc;
  final QuestionCompletedCubit _questionCompletedCubit;
  final AppRouter _appRouter;

  @override
  State<LitCodeApp> createState() => _LitCodeAppState();
}

class _LitCodeAppState extends State<LitCodeApp> {
  @override
  void dispose() {
    widget._userRepository.dispose();
    super.dispose();
  }

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
          BlocProvider<QuestionListBloc>(
            create: (context) => widget._questionListBloc,
          ),
          BlocProvider<QuestionCompletedCubit>(
            create: (context) => widget._questionCompletedCubit,
          ),
        ],
        child: MultiBlocListener(
          listeners: [
            BlocListener<AppBloc, AppState>(
              listener: (context, state) {
                if (state is Authenticated) {
                  widget._appRouter.router.goNamed('home');
                } else if (state is Unauthenticated) {
                  widget._appRouter.router.goNamed('signIn');
                }
              },
            ),
          ],
          child: BlocBuilder<ThemeCubit, ThemeState>(
            builder: (context, state) {
              return MaterialApp.router(
                debugShowCheckedModeBanner: false,
                theme: BlocProvider.of<ThemeCubit>(context).isDark
                    ? darkAppTheme
                    : lightAppTheme,
                routerConfig: widget._appRouter.router,
              );
            },
          ),
        ),
      ),
    );
  }
}
