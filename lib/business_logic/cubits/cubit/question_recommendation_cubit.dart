import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:lit_code/data/models/question.dart';
import 'package:lit_code/data/repositories/question_recommendation_repository.dart';

part 'question_recommendation_state.dart';
part 'question_recommendation_cubit.freezed.dart';

class QuestionRecommendationCubit extends Cubit<QuestionRecommendationState> {
  QuestionRecommendationCubit({
    required QuestionRecommendationRepository questionRecommendationRepository,
  })  : _questionRecommendationRepository = questionRecommendationRepository,
        super(const QuestionRecommendationState.initial());

  final QuestionRecommendationRepository _questionRecommendationRepository;

  Future<void> getRecommendedQuestions(int amount) async {
    emit(const QuestionRecommendationState.loading());
    try {
      final questions = await _questionRecommendationRepository
          .generateRecommendedQuestion(amount);
      emit(QuestionRecommendationState.loaded(questions));
    } catch (e) {
      emit(QuestionRecommendationState.error(e.toString()));
    }
  }

  Future<void> refresh() async {
    if (state is QuestionRecommendationLoaded) {
      final questions = (state as QuestionRecommendationLoaded).questions;
      emit(QuestionRecommendationState.loaded(questions));
    }
  }

  Future<void> reset() async {
    emit(const QuestionRecommendationState.initial());
  }
}
