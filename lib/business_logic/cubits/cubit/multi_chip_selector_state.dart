part of 'multi_chip_selector_cubit.dart';

@freezed
class MultiChipSelectorState with _$MultiChipSelectorState {
  const factory MultiChipSelectorState({
    required Set<String> selectedItems,
    required Set<String> items,
  }) = _MultiChipSelectorState;

  factory MultiChipSelectorState.initial() => const MultiChipSelectorState(
        selectedItems: <String>{},
        items: <String>{},
      );
}
