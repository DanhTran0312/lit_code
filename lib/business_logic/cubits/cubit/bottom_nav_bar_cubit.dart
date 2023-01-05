import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'bottom_nav_bar_state.dart';
part 'bottom_nav_bar_cubit.freezed.dart';

class BottomNavBarCubit extends Cubit<BottomNavBarState> {
  BottomNavBarCubit() : super(BottomNavBarState.initial());

  void updateSelectedIndex(int index) {
    emit(state.copyWith(currentIndex: index));
  }

  void reset() {
    emit(BottomNavBarState.initial());
  }
}
