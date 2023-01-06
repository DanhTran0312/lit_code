part of 'question_list_bloc.dart';

@freezed
class QuestionListEvent with _$QuestionListEvent {
  const factory QuestionListEvent.fetchQuestions() = FetchQuestions;
  const factory QuestionListEvent.updateQuestions(List<Question> questions) =
      UpdateQuestions;
}
