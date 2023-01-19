part of 'question_completed_cubit.dart';

@freezed
class QuestionCompletedState with _$QuestionCompletedState {
  const factory QuestionCompletedState.initial() = QuestionCompletedInitial;
  const factory QuestionCompletedState.loading() = QuestionCompletedLoading;
  const factory QuestionCompletedState.loaded() = QuestionCompletedLoaded;
  const factory QuestionCompletedState.error(String message) =
      QuestionCompletedError;
}
