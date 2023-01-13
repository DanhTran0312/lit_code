import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:lit_code/app/app.dart';
import 'package:lit_code/bootstrap.dart';
import 'package:lit_code/business_logic/blocs/bloc/auth_bloc.dart';

import 'package:lit_code/business_logic/blocs/bloc/question_list_bloc.dart';
import 'package:lit_code/business_logic/cubits/cubit/bottom_nav_bar_cubit.dart';
import 'package:lit_code/business_logic/cubits/cubit/network_connection_cubit.dart';
import 'package:lit_code/business_logic/cubits/cubit/question_completed_cubit.dart';
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

  final databaseReference = FirebaseDatabase.instance.ref();
  final userReposiory = createUserRepository(boxes.userBox, databaseReference);
  final authRepository = createAuthRepository();
  final questionRepository = createQuestionRepository(
    boxes.questionBox,
    boxes.userBox,
    databaseReference,
  );
  final appRouter = createAppRouter(userReposiory);

  final connectivity = Connectivity();

  final networkConnectionCubit = NetworkConnectionCubit(
    connectivity: connectivity,
  );

  final authBloc = AuthBloc(
    authRepository: authRepository,
    userRepository: userReposiory,
  );

  final bottomNavBarCubit = BottomNavBarCubit();

  final questionCompletedCubit = QuestionCompletedCubit(
    userRepository: userReposiory,
    networkConnectionCubit: networkConnectionCubit,
  );

  final questionListBloc = QuestionListBloc(
    questionRepository: questionRepository,
    networkConnectionCubit: networkConnectionCubit,
  );

  await bootstrap(
    () => MultiBlocProvider(
      providers: [
        BlocProvider<NetworkConnectionCubit>(
          create: (context) => networkConnectionCubit,
        ),
        BlocProvider<AuthBloc>(
          create: (context) => authBloc,
        ),
        BlocProvider<BottomNavBarCubit>(
          create: (context) => bottomNavBarCubit,
        ),
        BlocProvider<QuestionListBloc>(
          create: (context) => questionListBloc,
        ),
        BlocProvider<QuestionCompletedCubit>(
          create: (context) => questionCompletedCubit,
        ),
      ],
      child: LitCodeApp(
        appRouter: appRouter,
        userBox: boxes.userBox,
        questionBox: boxes.questionBox,
      ),
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

class Boxes {
  Boxes({
    required this.questionBox,
    required this.userBox,
  });
  final Box<Question> questionBox;
  final Box<User> userBox;
}

UserRepository createUserRepository(
  Box<User> userBox,
  DatabaseReference databaseReference,
) {
  return UserRepository(
    userBox: userBox,
    firebaseDatabase: databaseReference,
  );
}

QuestionRepository createQuestionRepository(
  Box<Question> questionBox,
  Box<User> userBox,
  DatabaseReference databaseReference,
) {
  return QuestionRepository(
    questionBox: questionBox,
    userBox: userBox,
    firebaseDatabase: databaseReference,
  );
}

AuthRepository createAuthRepository() {
  return AuthRepository();
}

AppRouter createAppRouter(UserRepository userRepository) {
  return AppRouter(
    userRepository: userRepository,
  );
}
