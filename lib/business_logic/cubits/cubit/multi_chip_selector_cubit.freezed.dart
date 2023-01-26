// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'multi_chip_selector_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MultiChipSelectorState {
  Set<String> get selectedItems => throw _privateConstructorUsedError;
  Set<String> get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MultiChipSelectorStateCopyWith<MultiChipSelectorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultiChipSelectorStateCopyWith<$Res> {
  factory $MultiChipSelectorStateCopyWith(MultiChipSelectorState value,
          $Res Function(MultiChipSelectorState) then) =
      _$MultiChipSelectorStateCopyWithImpl<$Res, MultiChipSelectorState>;
  @useResult
  $Res call({Set<String> selectedItems, Set<String> items});
}

/// @nodoc
class _$MultiChipSelectorStateCopyWithImpl<$Res,
        $Val extends MultiChipSelectorState>
    implements $MultiChipSelectorStateCopyWith<$Res> {
  _$MultiChipSelectorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedItems = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      selectedItems: null == selectedItems
          ? _value.selectedItems
          : selectedItems // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MultiChipSelectorStateCopyWith<$Res>
    implements $MultiChipSelectorStateCopyWith<$Res> {
  factory _$$_MultiChipSelectorStateCopyWith(_$_MultiChipSelectorState value,
          $Res Function(_$_MultiChipSelectorState) then) =
      __$$_MultiChipSelectorStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Set<String> selectedItems, Set<String> items});
}

/// @nodoc
class __$$_MultiChipSelectorStateCopyWithImpl<$Res>
    extends _$MultiChipSelectorStateCopyWithImpl<$Res,
        _$_MultiChipSelectorState>
    implements _$$_MultiChipSelectorStateCopyWith<$Res> {
  __$$_MultiChipSelectorStateCopyWithImpl(_$_MultiChipSelectorState _value,
      $Res Function(_$_MultiChipSelectorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedItems = null,
    Object? items = null,
  }) {
    return _then(_$_MultiChipSelectorState(
      selectedItems: null == selectedItems
          ? _value._selectedItems
          : selectedItems // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ));
  }
}

/// @nodoc

class _$_MultiChipSelectorState implements _MultiChipSelectorState {
  const _$_MultiChipSelectorState(
      {required final Set<String> selectedItems,
      required final Set<String> items})
      : _selectedItems = selectedItems,
        _items = items;

  final Set<String> _selectedItems;
  @override
  Set<String> get selectedItems {
    if (_selectedItems is EqualUnmodifiableSetView) return _selectedItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_selectedItems);
  }

  final Set<String> _items;
  @override
  Set<String> get items {
    if (_items is EqualUnmodifiableSetView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_items);
  }

  @override
  String toString() {
    return 'MultiChipSelectorState(selectedItems: $selectedItems, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MultiChipSelectorState &&
            const DeepCollectionEquality()
                .equals(other._selectedItems, _selectedItems) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_selectedItems),
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MultiChipSelectorStateCopyWith<_$_MultiChipSelectorState> get copyWith =>
      __$$_MultiChipSelectorStateCopyWithImpl<_$_MultiChipSelectorState>(
          this, _$identity);
}

abstract class _MultiChipSelectorState implements MultiChipSelectorState {
  const factory _MultiChipSelectorState(
      {required final Set<String> selectedItems,
      required final Set<String> items}) = _$_MultiChipSelectorState;

  @override
  Set<String> get selectedItems;
  @override
  Set<String> get items;
  @override
  @JsonKey(ignore: true)
  _$$_MultiChipSelectorStateCopyWith<_$_MultiChipSelectorState> get copyWith =>
      throw _privateConstructorUsedError;
}
