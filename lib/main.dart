import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:lit_code/app/app.dart';
import 'package:lit_code/bootstrap.dart';
import 'package:lit_code/business_logic/blocs/bloc/app_bloc.dart';
import 'package:lit_code/business_logic/blocs/bloc/question_list_bloc.dart';
import 'package:lit_code/business_logic/blocs/bloc/settings_bloc.dart';
import 'package:lit_code/business_logic/blocs/bloc/statistics_bloc.dart';
import 'package:lit_code/business_logic/cubits/cubit/confetti_cubit.dart';
import 'package:lit_code/business_logic/cubits/cubit/experience_cubit.dart';
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
  await SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.manual,
    overlays: [
      SystemUiOverlay.bottom, //This line is used for showing the bottom bar
    ],
  );
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );
  final boxes = await initializeHive();
  await initializeFirebase();

  final firebaseAuth = FirebaseAuth.instance;
  final googleSignIn = GoogleSignIn();
  final databaseReference = FirebaseDatabase.instance.ref();

  final userReposiory = UserRepository(
    userBox: boxes.userBox,
    firebaseDatabase: databaseReference,
  );

  final authRepository = AuthRepository(
    firebaseAuth: firebaseAuth,
    googleSignIn: googleSignIn,
    userRepository: userReposiory,
  );
  await authRepository.userStream.first;

  final questionRepository = QuestionRepository(
    firebaseDatabase: databaseReference,
    questionBox: boxes.questionBox,
    userBox: boxes.userBox,
  );
  final statisticsBloc = StatisticsBloc(
    completedQuestions: await userReposiory.getCompletedQuestions(),
  );

  final connectivity = Connectivity();

  final settingsBloc = SettingsBloc(
    userRepository: userReposiory,
  );

  final appBloc = AppBloc(
    authRepository: authRepository,
    userRepository: userReposiory,
    statisticsBloc: statisticsBloc,
    settingsBloc: settingsBloc,
  );

  final questionRecommendationRepository = QuestionRecommendationRepository(
    statisticsBloc: statisticsBloc,
    userRepository: userReposiory,
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
  final experienceCubit = ExperienceCubit(
    userRepository: userReposiory,
  );

  final appRouter = AppRouter(
    appBloc: appBloc,
    onboardingCubit: onboardingCubit,
    experienceCubit: experienceCubit,
  );

  final homeScreenConfettiCubit = ConfettiCubit();

  await bootstrap(
    () => LitCodeApp(
      appBloc: appBloc,
      themeCubit: themeCubit,
      networkConnectionCubit: networkConnectionCubit,
      questionListBloc: questionListBloc,
      authRepository: authRepository,
      userRepository: userReposiory,
      appRouter: appRouter,
      boxes: boxes,
      statisticsBloc: statisticsBloc,
      settingsBloc: settingsBloc,
      questionRecommendationRepository: questionRecommendationRepository,
      homeScreenConfettiCubit: homeScreenConfettiCubit,
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
    ..registerAdapter(CategoryAdapter())
    ..registerAdapter(ExperienceAdapter())
    ..registerAdapter(ThemeModeAdapter());
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
