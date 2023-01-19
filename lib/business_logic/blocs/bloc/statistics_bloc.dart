import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lit_code/data/models/models.dart';

part 'statistics_event.dart';
part 'statistics_state.dart';
part 'statistics_bloc.freezed.dart';

class StatisticsBloc extends Bloc<StatisticsEvent, StatisticsState> {
  StatisticsBloc() : super(StatisticsState.initial()) {
    on<UpdateCompletedQuestions>(_onUpdateCompletedQuestions);
    on<UpdateTotalQuestions>(_onUpdateTotalQuestions);
  }

  Future<void> _onUpdateCompletedQuestions(
    UpdateCompletedQuestions event,
    Emitter<StatisticsState> emit,
  ) async {
    try {
      final statistics = Statistics(
        completedQuestions: event.completedQuestions.values.toList(),
        totalQuestions: state.totalQuestions,
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

  Future<void> _onUpdateTotalQuestions(
    UpdateTotalQuestions event,
    Emitter<StatisticsState> emit,
  ) async {
    try {
      final statistics = Statistics(
        completedQuestions: state.completedQuestions.values.toList(),
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