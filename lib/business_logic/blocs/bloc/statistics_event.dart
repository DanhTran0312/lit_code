part of 'statistics_bloc.dart';

@freezed
class StatisticsEvent with _$StatisticsEvent {
  const factory StatisticsEvent.updateCompletedQuestions({
    required Map<String, Question> completedQuestions,
  }) = UpdateCompletedQuestions;
  const factory StatisticsEvent.updateTotalQuestions({
    required List<Question> totalQuestions,
  }) = UpdateTotalQuestions;
  const factory StatisticsEvent.resetStatistics() = ResetStatistics;
}
