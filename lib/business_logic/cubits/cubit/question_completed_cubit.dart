import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lit_code/business_logic/blocs/bloc/statistics_bloc.dart';
import 'package:lit_code/data/models/models.dart';
import 'package:lit_code/data/repositories/repositories.dart';

part 'question_completed_state.dart';
part 'question_completed_cubit.freezed.dart';

class QuestionCompletedCubit extends Cubit<QuestionCompletedState> {
  QuestionCompletedCubit({
    required UserRepository userRepository,
    required StatisticsBloc statisticsBloc,
  })  : _userRepository = userRepository,
        _statisticsBloc = statisticsBloc,
        super(const QuestionCompletedState.initial());

  final UserRepository _userRepository;
  final StatisticsBloc _statisticsBloc;

  Future<void> markQuestionAsCompleted(Question question) async {
    emit(const QuestionCompletedState.loading());
    try {
      await _userRepository.markQuestionAsCompleted(question);
      final questions = await _userRepository.getCompletedQuestions();
      _statisticsBloc.add(
        UpdateCompletedQuestions(
          completedQuestions: questions,
        ),
      );
      emit(const QuestionCompletedState.loaded());
      await _userRepository.syncCompletedQuestions();
    } catch (e) {
      emit(QuestionCompletedState.error(e.toString()));
    }
  }

  Future<void> markQuestionAsUncompleted(Question question) async {
    emit(const QuestionCompletedState.loading());
    try {
      await _userRepository.markQuestionAsUncompleted(question);
      final questions = await _userRepository.getCompletedQuestions();
      _statisticsBloc.add(
        UpdateCompletedQuestions(
          completedQuestions: questions,
        ),
      );
      emit(const QuestionCompletedState.loaded());
      await _userRepository.syncCompletedQuestions();
    } catch (e) {
      emit(QuestionCompletedState.error(e.toString()));
    }
  }
}
