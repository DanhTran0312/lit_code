part of 'question_bloc.dart';

@freezed
class QuestionState with _$QuestionState {
  const factory QuestionState.initial() = QuestionInitial;
  const factory QuestionState.loading() = QuestionLoading;
  const factory QuestionState.loaded(Question question) = QuestionLoaded;
  const factory QuestionState.error(String message) = QuestionError;
}
