part of 'statistics_bloc.dart';

@freezed
class StatisticsState with _$StatisticsState {
  const factory StatisticsState({
    required Map<String, Question> completedQuestions,
    required List<Question> totalQuestions,
    required Statistics statistics,
  }) = _StatisticsState;

  factory StatisticsState.initial() => const StatisticsState(
        completedQuestions: {},
        totalQuestions: [],
        statistics: Statistics(),
      );
}
