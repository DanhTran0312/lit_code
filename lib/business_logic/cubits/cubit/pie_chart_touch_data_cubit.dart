import 'package:bloc/bloc.dart';

class PieChartTouchDataCubit extends Cubit<int> {
  PieChartTouchDataCubit() : super(-1);

  void updateTouchData(int index) {
    emit(index);
  }
}
