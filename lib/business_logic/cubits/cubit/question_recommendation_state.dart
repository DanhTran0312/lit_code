part of 'question_recommendation_cubit.dart';

@freezed
class QuestionRecommendationState with _$QuestionRecommendationState {
  const factory QuestionRecommendationState.initial() =
      QuestionRecommendationInitial;
  const factory QuestionRecommendationState.loading() =
      QuestionRecommendationLoading;
  const factory QuestionRecommendationState.loaded(
    List<Question> questions,
  ) = QuestionRecommendationLoaded;
  const factory QuestionRecommendationState.error(
    String message,
  ) = QuestionRecommendationError;
}
