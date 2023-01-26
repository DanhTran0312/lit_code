import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'multi_chip_selector_state.dart';
part 'multi_chip_selector_cubit.freezed.dart';

class MultiChipSelectorCubit extends Cubit<MultiChipSelectorState> {
  MultiChipSelectorCubit({
    Set<String> selectedItems = const {},
    Set<String> items = const {},
  }) : super(
          MultiChipSelectorState(
            selectedItems: selectedItems,
            items: items,
          ),
        );

  void selectItem(String item) {
    final selectedItems = Set<String>.from(state.selectedItems);
    if (selectedItems.contains(item)) {
      selectedItems.remove(item);
    } else {
      selectedItems.add(item);
    }
    emit(state.copyWith(selectedItems: selectedItems));
  }

  void reset() {
    emit(MultiChipSelectorState.initial());
  }

  void selectAll() {
    emit(state.copyWith(selectedItems: state.items));
  }

  void deselectAll() {
    emit(state.copyWith(selectedItems: {}));
  }

  bool isSelected(String item) {
    return state.selectedItems.contains(item);
  }
}
