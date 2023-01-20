part of 'question_list_bloc.dart';

// This event fetches questions from the server and updates the UI
// with the new data.

@freezed
class QuestionListEvent with _$QuestionListEvent {
  const factory QuestionListEvent.fetchQuestions() = FetchQuestions;
}
