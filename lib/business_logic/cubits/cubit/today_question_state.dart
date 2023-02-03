part of 'today_question_cubit.dart';

@freezed
class TodayQuestionState with _$TodayQuestionState {
  const factory TodayQuestionState.initial() = TodayQuestionInitial;
  const factory TodayQuestionState.loading() = TodayQuestionLoading;
  const factory TodayQuestionState.loaded(List<Question> questions) =
      TodayQuestionLoaded;
  const factory TodayQuestionState.error(String message) = TodayQuestionError;
}
