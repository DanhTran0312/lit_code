// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bottom_nav_bar_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BottomNavBarState {
  int get currentIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BottomNavBarStateCopyWith<BottomNavBarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomNavBarStateCopyWith<$Res> {
  factory $BottomNavBarStateCopyWith(
          BottomNavBarState value, $Res Function(BottomNavBarState) then) =
      _$BottomNavBarStateCopyWithImpl<$Res, BottomNavBarState>;
  @useResult
  $Res call({int currentIndex});
}

/// @nodoc
class _$BottomNavBarStateCopyWithImpl<$Res, $Val extends BottomNavBarState>
    implements $BottomNavBarStateCopyWith<$Res> {
  _$BottomNavBarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentIndex = null,
  }) {
    return _then(_value.copyWith(
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BottomNavBarStateCopyWith<$Res>
    implements $BottomNavBarStateCopyWith<$Res> {
  factory _$$_BottomNavBarStateCopyWith(_$_BottomNavBarState value,
          $Res Function(_$_BottomNavBarState) then) =
      __$$_BottomNavBarStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int currentIndex});
}

/// @nodoc
class __$$_BottomNavBarStateCopyWithImpl<$Res>
    extends _$BottomNavBarStateCopyWithImpl<$Res, _$_BottomNavBarState>
    implements _$$_BottomNavBarStateCopyWith<$Res> {
  __$$_BottomNavBarStateCopyWithImpl(
      _$_BottomNavBarState _value, $Res Function(_$_BottomNavBarState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentIndex = null,
  }) {
    return _then(_$_BottomNavBarState(
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_BottomNavBarState extends _BottomNavBarState {
  const _$_BottomNavBarState({required this.currentIndex}) : super._();

  @override
  final int currentIndex;

  @override
  String toString() {
    return 'BottomNavBarState(currentIndex: $currentIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BottomNavBarState &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BottomNavBarStateCopyWith<_$_BottomNavBarState> get copyWith =>
      __$$_BottomNavBarStateCopyWithImpl<_$_BottomNavBarState>(
          this, _$identity);
}

abstract class _BottomNavBarState extends BottomNavBarState {
  const factory _BottomNavBarState({required final int currentIndex}) =
      _$_BottomNavBarState;
  const _BottomNavBarState._() : super._();

  @override
  int get currentIndex;
  @override
  @JsonKey(ignore: true)
  _$$_BottomNavBarStateCopyWith<_$_BottomNavBarState> get copyWith =>
      throw _privateConstructorUsedError;
}
