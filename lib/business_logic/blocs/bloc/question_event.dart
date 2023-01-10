part of 'question_bloc.dart';

@freezed
class QuestionEvent with _$QuestionEvent {
  const factory QuestionEvent.fetchQuestion(String id) = FetchQuestionRequested;
  const factory QuestionEvent.updateQuestion(Question question) =
      UpdateQuestionRequested;
}
