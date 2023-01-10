import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pie_chart_touch_data_state.dart';
part 'pie_chart_touch_data_cubit.freezed.dart';

class PieChartTouchDataCubit extends Cubit<PieChartTouchDataState> {
  PieChartTouchDataCubit() : super(const PieChartTouchDataState.touchData(-1));

  void updateTouchData(int touchedIndex) {
    emit(PieChartTouchData(touchedIndex));
  }
}
