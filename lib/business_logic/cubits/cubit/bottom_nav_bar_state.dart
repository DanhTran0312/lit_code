part of 'bottom_nav_bar_cubit.dart';

@freezed
class BottomNavBarState with _$BottomNavBarState {
  const factory BottomNavBarState({
    required int currentIndex,
  }) = _BottomNavBarState;
  const BottomNavBarState._();

  factory BottomNavBarState.initial() => const BottomNavBarState(
        currentIndex: 2,
      );

  int get selectedIndex => currentIndex;
}
