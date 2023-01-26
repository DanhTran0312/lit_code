import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lit_code/business_logic/cubits/cubit/multi_chip_selector_cubit.dart';
import 'package:lit_code/constants/constant.dart';

class CustomMultiChipsSelectorDialog extends StatelessWidget {
  CustomMultiChipsSelectorDialog({
    super.key,
    required this.title,
    required this.items,
    required this.height,
    required this.width,
    required this.selectedItems,
  }) : _multiChipSelectorCubit = MultiChipSelectorCubit(
          selectedItems: selectedItems,
          items: items,
        );

  final Widget title;
  final Set<String> items;
  final Set<String> selectedItems;
  final double height;
  final double width;
  final MultiChipSelectorCubit _multiChipSelectorCubit;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AlertDialog(
      backgroundColor: theme.scaffoldBackgroundColor,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          title,
          Text(
            'Select one or more',
            style: theme.textTheme.headline6,
          )
        ],
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      clipBehavior: Clip.hardEdge,
      content: BlocProvider(
        create: (context) => _multiChipSelectorCubit,
        child: _DialogContent(
          height: height,
          width: width,
          items: items,
          theme: theme,
          multiChipSelectorCubit: _multiChipSelectorCubit,
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            _multiChipSelectorCubit.reset();
            Navigator.pop(context);
          },
          child: Text(
            'Cancel',
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context, _multiChipSelectorCubit.state.selectedItems);
          },
          child: Text(
            'Confirm',
            style: Theme.of(context).textTheme.headline5!.copyWith(
                  color: theme.primaryColor,
                ),
          ),
        ),
      ],
    );
  }
}

class _DialogContent extends StatelessWidget {
  const _DialogContent({
    required this.height,
    required this.width,
    required this.items,
    required this.theme,
    required MultiChipSelectorCubit multiChipSelectorCubit,
  }) : _multiChipSelectorCubit = multiChipSelectorCubit;

  final double height;
  final double width;
  final Set<String> items;
  final ThemeData theme;
  final MultiChipSelectorCubit _multiChipSelectorCubit;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: SingleChildScrollView(
        child: BlocBuilder<MultiChipSelectorCubit, MultiChipSelectorState>(
          bloc: _multiChipSelectorCubit,
          builder: (context, state) {
            return Wrap(
              children: [
                for (final item in items)
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 7,
                      vertical: 4,
                    ),
                    child: ChoiceChip(
                      side: BorderSide.none,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      label: Text(
                        item,
                        style: theme.textTheme.headline6,
                      ),
                      backgroundColor: Colors.indigo,
                      selected: _multiChipSelectorCubit.isSelected(item),
                      selectedColor: darkSecondaryColor,
                      onSelected: (selected) {
                        _multiChipSelectorCubit.selectItem(item);
                      },
                    ),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}
