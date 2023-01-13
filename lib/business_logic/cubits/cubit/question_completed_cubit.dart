import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lit_code/business_logic/cubits/cubit/network_connection_cubit.dart';
import 'package:lit_code/data/models/models.dart';
import 'package:lit_code/data/repositories/repositories.dart';

part 'question_completed_state.dart';
part 'question_completed_cubit.freezed.dart';

class QuestionCompletedCubit extends Cubit<QuestionCompletedState> {
  QuestionCompletedCubit({
    required this.userRepository,
    required this.networkConnectionCubit,
  }) : super(const QuestionCompletedState.initial()) {
    monitorConnectionCubit();
  }

  StreamSubscription<NetworkConnectionState> monitorConnectionCubit() {
    return networkConnectionSubscription = networkConnectionCubit.stream.listen(
      (state) {
        if (state is Connected) {
          userRepository.setIsSynced(true);
        } else {
          userRepository.setIsSynced(false);
        }
      },
    );
  }

  final UserRepository userRepository;
  final NetworkConnectionCubit networkConnectionCubit;
  late final StreamSubscription networkConnectionSubscription;

  Future<void> markQuestionAsCompleted(Question question) async {
    emit(const QuestionCompletedState.loading());
    try {
      await userRepository.markQuestionAsCompleted(question);
      if (userRepository.isSynced) {
        await userRepository.syncCompletedQuestions();
      }
      final questions = await userRepository.getCompletedQuestions();
      emit(QuestionCompletedState.loaded(questions));
    } catch (e) {
      emit(QuestionCompletedState.error(e.toString()));
    }
  }

  Future<void> markQuestionAsUncompleted(Question question) async {
    emit(const QuestionCompletedState.loading());
    try {
      await userRepository.markQuestionAsUncompleted(question);
      final questions = await userRepository.getCompletedQuestions();
      emit(QuestionCompletedState.loaded(questions));
    } catch (e) {
      emit(QuestionCompletedState.error(e.toString()));
    }
  }

  Future<void> getCompletedQuestions() async {
    emit(const QuestionCompletedState.loading());
    try {
      final questions = await userRepository.getCompletedQuestions();
      emit(QuestionCompletedState.loaded(questions));
    } catch (e) {
      emit(QuestionCompletedState.error(e.toString()));
    }
  }

  @override
  Future<void> close() {
    networkConnectionSubscription.cancel();
    return super.close();
  }
}
