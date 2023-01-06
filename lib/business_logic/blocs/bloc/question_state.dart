part of 'question_bloc.dart';

@freezed
class QuestionState with _$QuestionState {
  const factory QuestionState.loading() = Loading;
  const factory QuestionState.loaded(Question question) = Loaded;
  const factory QuestionState.error(String message) = Error;
}
