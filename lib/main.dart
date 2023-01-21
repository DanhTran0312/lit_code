import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:lit_code/app/app.dart';
import 'package:lit_code/bootstrap.dart';
import 'package:lit_code/business_logic/blocs/bloc/app_bloc.dart';
import 'package:lit_code/business_logic/blocs/bloc/question_list_bloc.dart';
import 'package:lit_code/business_logic/blocs/bloc/statistics_bloc.dart';
import 'package:lit_code/business_logic/cubits/cubit/completed_question_cubit.dart';
import 'package:lit_code/business_logic/cubits/cubit/network_connection_cubit.dart';
import 'package:lit_code/business_logic/cubits/cubit/on_boarding_cubit.dart';
import 'package:lit_code/business_logic/cubits/cubit/theme_cubit.dart';
import 'package:lit_code/constants/enums.dart';
import 'package:lit_code/data/models/models.dart';
import 'package:lit_code/data/repositories/repositories.dart';
import 'package:lit_code/firebase_options.dart';
import 'package:lit_code/presentation/router/app_router.dart';
import 'package:path_provider/path_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );
  final boxes = await initializeHive();
  await initializeFirebase();

  final firebaseAuth = FirebaseAuth.instance;
  final googleSignIn = GoogleSignIn();
  final databaseReference = FirebaseDatabase.instance.ref();

  final authRepository = AuthRepository(
    userBox: boxes.userBox,
    firebaseAuth: firebaseAuth,
    googleSignIn: googleSignIn,
  );

  await authRepository.user.first;
  final userReposiory = UserRepository(
    userBox: boxes.userBox,
    firebaseDatabase: databaseReference,
    authRepository: authRepository,
  );
  final questionRepository = QuestionRepository(
    firebaseDatabase: databaseReference,
    questionBox: boxes.questionBox,
    userBox: boxes.userBox,
  );
  final statisticsBloc = StatisticsBloc();

  final connectivity = Connectivity();

  final appBloc = AppBloc(
    authRepository: authRepository,
  );

  final themeCubit = ThemeCubit();

  final networkConnectionCubit = NetworkConnectionCubit(
    connectivity: connectivity,
  );

  final questionListBloc = QuestionListBloc(
    questionRepository: questionRepository,
    statisticsBloc: statisticsBloc,
  );

  final onboardingCubit = OnBoardingCubit();

  final appRouter = AppRouter(
    appBloc: appBloc,
    onboardingCubit: onboardingCubit,
  );

  final completedQuestionCubit = CompletedQuestionCubit(
    userRepository: userReposiory,
    statisticsBloc: statisticsBloc,
  );

  await bootstrap(
    () => LitCodeApp(
      appBloc: appBloc,
      themeCubit: themeCubit,
      networkConnectionCubit: networkConnectionCubit,
      completedQuestionCubit: completedQuestionCubit,
      questionListBloc: questionListBloc,
      authRepository: authRepository,
      userRepository: userReposiory,
      appRouter: appRouter,
      boxes: boxes,
      statisticsBloc: statisticsBloc,
    ),
  );
}

Future<Boxes> initializeHive() async {
  await Hive.initFlutter();
  Hive
    ..registerAdapter(UserAdapter())
    ..registerAdapter(QuestionAdapter())
    ..registerAdapter(SettingsAdapter())
    ..registerAdapter(DifficultyAdapter())
    ..registerAdapter(ConfidenceAdapter())
    ..registerAdapter(CategoryAdapter());
  final userBox = await Hive.openBox<User>('userBox');
  final questionBox = await Hive.openBox<Question>('questionBox');
  return Boxes(
    userBox: userBox,
    questionBox: questionBox,
  );
}

Future<void> initializeFirebase() async {
  await Firebase.initializeApp(
    name: 'Main',
    options: DefaultFirebaseOptions.currentPlatform,
  );
}
