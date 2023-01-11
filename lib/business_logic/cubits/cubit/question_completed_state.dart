part of 'question_completed_cubit.dart';

@freezed
class QuestionCompletedState with _$QuestionCompletedState {
  const factory QuestionCompletedState.initial() = Initial;
  const factory QuestionCompletedState.loading() = Loading;
  const factory QuestionCompletedState.loaded(
    Map<String, Question> completedQuestions,
  ) = Loaded;
  const factory QuestionCompletedState.error(String message) = Error;
}
