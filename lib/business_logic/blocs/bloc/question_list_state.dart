part of 'question_list_bloc.dart';

@freezed
class QuestionListState with _$QuestionListState {
  const factory QuestionListState.initial() = QuestionListInitial;
  const factory QuestionListState.loading() = QuestionListLoading;
  const factory QuestionListState.questionListLoaded(List<Question> questions) =
      QuestionListLoaded;
  const factory QuestionListState.error(String message) = QuestionListError;
}
