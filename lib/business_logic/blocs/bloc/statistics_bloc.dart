import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lit_code/data/models/models.dart';

part 'statistics_event.dart';
part 'statistics_state.dart';
part 'statistics_bloc.freezed.dart';

class StatisticsBloc extends Bloc<StatisticsEvent, StatisticsState> {
  StatisticsBloc({
    Map<String, Question> completedQuestions = const {},
    List<Question> totalQuestions = const [],
    Statistics statistics = const Statistics(),
  }) : super(
          StatisticsState(
            completedQuestions: completedQuestions,
            totalQuestions: totalQuestions,
            statistics: statistics,
          ),
        ) {
    on<UpdateCompletedQuestions>(_onUpdateCompletedQuestions);
    on<UpdateTotalQuestions>(_onUpdateTotalQuestions);
    on<ResetStatistics>(_onResetStatistics);
  }
  Future<void> _onUpdateCompletedQuestions(
    UpdateCompletedQuestions event,
    Emitter<StatisticsState> emit,
  ) async {
    try {
      final statistics = state.statistics.copyWith(
        completedQuestions: event.completedQuestions.values.toList(),
      );
      emit(
        state.copyWith(
          completedQuestions: event.completedQuestions,
          statistics: statistics,
        ),
      );
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> _onResetStatistics(
    ResetStatistics event,
    Emitter<StatisticsState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          completedQuestions: {},
          totalQuestions: [],
          statistics: const Statistics(),
        ),
      );
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> _onUpdateTotalQuestions(
    UpdateTotalQuestions event,
    Emitter<StatisticsState> emit,
  ) async {
    try {
      final statistics = state.statistics.copyWith(
        totalQuestions: event.totalQuestions,
      );
      emit(
        state.copyWith(
          totalQuestions: event.totalQuestions,
          statistics: statistics,
        ),
      );
    } catch (e) {
      throw Exception(e);
    }
  }
}
