part of 'question_list_bloc.dart';

@freezed
class QuestionListState with _$QuestionListState {
  const factory QuestionListState.loading() = Loading;
  const factory QuestionListState.loaded(List<Question> questions) = Loaded;
  const factory QuestionListState.error(String message) = Error;
}
