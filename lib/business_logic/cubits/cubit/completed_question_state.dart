part of 'completed_question_cubit.dart';

@freezed
class CompletedQuestionState with _$CompletedQuestionState {
  const factory CompletedQuestionState.initial() = CompletedQuestionInitial;
  const factory CompletedQuestionState.syncing() = CompletedQuestionSyncing;
  const factory CompletedQuestionState.synced() = CompletedQuestionSynced;
  const factory CompletedQuestionState.error(String message) =
      CompletedQuestionError;
}
