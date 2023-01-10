part of 'pie_chart_touch_data_cubit.dart';

@freezed
class PieChartTouchDataState with _$PieChartTouchDataState {
  const PieChartTouchDataState._();
  const factory PieChartTouchDataState.touchData(
    int touchedIndex,
  ) = PieChartTouchData;

  @override
  int get touchedIndex => when(
        touchData: (touchedIndex) => touchedIndex,
      );
}
