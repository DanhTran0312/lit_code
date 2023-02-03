import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lit_code/business_logic/blocs/bloc/statistics_bloc.dart';
import 'package:lit_code/business_logic/cubits/cubit/confetti_cubit.dart';
import 'package:lit_code/constants/constants.dart';
import 'package:lit_code/data/models/models.dart';
import 'package:lit_code/data/repositories/repositories.dart';

part 'completed_question_state.dart';
part 'completed_question_cubit.freezed.dart';

class CompletedQuestionCubit extends Cubit<CompletedQuestionState> {
  CompletedQuestionCubit({
    required UserRepository userRepository,
    required StatisticsBloc statisticsBloc,
    required ConfettiCubit confettiCubit,
    // required TodayQuestionCubit todayQuestionCubit,
  })  : _userRepository = userRepository,
        _statisticsBloc = statisticsBloc,
        _confettiCubit = confettiCubit,
        // _todayQuestionCubit = todayQuestionCubit,
        super(const CompletedQuestionState.initial());

  final ConfettiCubit _confettiCubit;
  final StatisticsBloc _statisticsBloc;
  final UserRepository _userRepository;
  // final TodayQuestionCubit _todayQuestionCubit;

  Future<void> markQuestionAsCompleted(Question question) async {
    emit(const CompletedQuestionState.syncing());
    try {
      // final userTodayQuestion = _userRepository.user.todayQuestions ?? [];
      // if (userTodayQuestion.contains(question)) {
      //   await _todayQuestionCubit.updateTodayQuestions(
      //     userTodayQuestion
      //         .where((element) => element.id != question.id)
      //         .toList(),
      //   );
      // }
      await _userRepository.markQuestionAsCompleted(question);
      final questions = await _userRepository.getCompletedQuestions();
      _statisticsBloc.add(
        UpdateCompletedQuestions(
          completedQuestions: questions,
        ),
      );
      unawaited(_confettiCubit.startConfetti());
      emit(const CompletedQuestionState.synced());
    } catch (e) {
      emit(CompletedQuestionState.error(e.toString()));
    }
  }

  Future<void> markQuestionAsUncompleted(Question question) async {
    emit(const CompletedQuestionState.syncing());
    try {
      // final userTodayQuestion = _userRepository.user.todayQuestions ?? [];
      // if (userTodayQuestion.any((element) => element.id == question.id)) {
      //   await _todayQuestionCubit
      //       .updateTodayQuestions(userTodayQuestion..add(question));
      // }
      await _userRepository.markQuestionAsUncompleted(question);
      final questions = await _userRepository.getCompletedQuestions();
      _statisticsBloc.add(
        UpdateCompletedQuestions(
          completedQuestions: questions,
        ),
      );
      emit(const CompletedQuestionState.synced());
    } catch (e) {
      emit(CompletedQuestionState.error(e.toString()));
    }
  }

  Future<void> onQuestionConfidenceChanged(
    Question question,
    Confidence confidence,
  ) async {
    emit(const CompletedQuestionState.syncing());
    try {
      if (!question.isCompleted) {
        unawaited(_confettiCubit.startConfetti());
      }
      await _userRepository.onQuestionConfidenceChange(question, confidence);
      final questions = await _userRepository.getCompletedQuestions();
      _statisticsBloc.add(
        UpdateCompletedQuestions(
          completedQuestions: questions,
        ),
      );
      emit(const CompletedQuestionState.synced());
    } catch (e) {
      emit(CompletedQuestionState.error(e.toString()));
    }
  }
}
