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
  })  : _userRepository = userRepository,
        _statisticsBloc = statisticsBloc,
        _confettiCubit = confettiCubit,
        super(const CompletedQuestionState.initial());

  final UserRepository _userRepository;
  final StatisticsBloc _statisticsBloc;
  final ConfettiCubit _confettiCubit;

  Future<void> markQuestionAsCompleted(Question question) async {
    emit(const CompletedQuestionState.syncing());
    try {
      await _userRepository.markQuestionAsCompleted(question);
      final questions = await _userRepository.getCompletedQuestions();
      _statisticsBloc.add(
        UpdateCompletedQuestions(
          completedQuestions: questions,
        ),
      );
      // _confettiCubit.startConfetti();
      emit(const CompletedQuestionState.synced());
    } catch (e) {
      emit(CompletedQuestionState.error(e.toString()));
    }
  }

  Future<void> markQuestionAsUncompleted(Question question) async {
    emit(const CompletedQuestionState.syncing());
    try {
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
      // if (!question.isCompleted) {
      //   await _confettiCubit.startConfetti();
      // }
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
