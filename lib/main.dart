import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:lit_code/app/app.dart';
import 'package:lit_code/bootstrap.dart';
import 'package:lit_code/business_logic/blocs/bloc/auth_bloc.dart';
import 'package:lit_code/business_logic/blocs/bloc/internet_connection_bloc.dart';
import 'package:lit_code/business_logic/blocs/bloc/question_bloc.dart';
import 'package:lit_code/business_logic/blocs/bloc/question_list_bloc.dart';
import 'package:lit_code/business_logic/cubits/cubit/bottom_nav_bar_cubit.dart';
import 'package:lit_code/business_logic/cubits/cubit/question_completed_cubit.dart';
import 'package:lit_code/business_logic/cubits/cubit/theme_cubit.dart';
import 'package:lit_code/constants/enums.dart';
import 'package:lit_code/data/models/models.dart';
import 'package:lit_code/data/repositories/internet_connection_repository.dart';
import 'package:lit_code/data/repositories/repositories.dart';
import 'package:lit_code/firebase_options.dart';
import 'package:lit_code/presentation/router/app_router.dart';
import 'package:path_provider/path_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );
  await Hive.initFlutter();
  Hive
    ..registerAdapter(UserAdapter())
    ..registerAdapter(QuestionAdapter())
    ..registerAdapter(SettingsAdapter())
    ..registerAdapter(DifficultyAdapter())
    ..registerAdapter(CategoryAdapter());

  final userBox = await Hive.openBox<User>('userBox');
  final questionBox = await Hive.openBox<Question>('questionBox');
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final userReposiory = UserRepository(
    userBox: userBox,
  );
  final authRepository = AuthRepository();
  final questionRepository = QuestionRepository(
    questionBox: questionBox,
    userBox: userBox,
  );

  final appRouter = AppRouter(
    userRepository: userReposiory,
  );

  await bootstrap(
    () => MultiBlocProvider(
      providers: [
        BlocProvider<InternetConnectionBloc>(
          create: (context) => InternetConnectionBloc(),
        ),
        BlocProvider<AuthBloc>(
          create: (context) => AuthBloc(
            authRepository: authRepository,
            userRepository: userReposiory,
          ),
        ),
        BlocProvider<ThemeCubit>(
          create: (context) => ThemeCubit(),
        ),
        BlocProvider<BottomNavBarCubit>(
          create: (context) => BottomNavBarCubit(),
        ),
        BlocProvider<QuestionBloc>(
          create: (context) => QuestionBloc(
            questionRepository: questionRepository,
          ),
        ),
        BlocProvider<QuestionListBloc>(
          create: (context) => QuestionListBloc(
            questionRepository: questionRepository,
          ),
        ),
        BlocProvider<QuestionCompletedCubit>(
          create: (context) => QuestionCompletedCubit(
            userRepository: userReposiory,
          ),
        ),
      ],
      child: LitCodeApp(
        appRouter: appRouter,
        userBox: userBox,
        questionBox: questionBox,
      ),
    ),
  );
}
