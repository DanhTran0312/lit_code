part of 'question_list_bloc.dart';

/// QuestionListState describes the state of the question list screen.
///
/// It can be in one of four states:
///   - [QuestionListInitial] - the initial state of the screen.
///   - [QuestionListLoading] - the screen is loading data.
///   - [QuestionListLoaded] - the screen has loaded data.
///   - [QuestionListError] - the screen has encountered an error.

@freezed
class QuestionListState with _$QuestionListState {
  const factory QuestionListState.initial() = QuestionListInitial;
  const factory QuestionListState.loading() = QuestionListLoading;
  const factory QuestionListState.questionListLoaded(List<Question> questions) =
      QuestionListLoaded;
  const factory QuestionListState.error(String message) = QuestionListError;
}
