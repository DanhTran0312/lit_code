// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pie_chart_touch_data_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PieChartTouchDataState {
  PieChartSectionData? get touchedSection => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PieChartTouchDataStateCopyWith<PieChartTouchDataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PieChartTouchDataStateCopyWith<$Res> {
  factory $PieChartTouchDataStateCopyWith(PieChartTouchDataState value,
          $Res Function(PieChartTouchDataState) then) =
      _$PieChartTouchDataStateCopyWithImpl<$Res, PieChartTouchDataState>;
  @useResult
  $Res call({PieChartSectionData? touchedSection});
}

/// @nodoc
class _$PieChartTouchDataStateCopyWithImpl<$Res,
        $Val extends PieChartTouchDataState>
    implements $PieChartTouchDataStateCopyWith<$Res> {
  _$PieChartTouchDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? touchedSection = freezed,
  }) {
    return _then(_value.copyWith(
      touchedSection: freezed == touchedSection
          ? _value.touchedSection
          : touchedSection // ignore: cast_nullable_to_non_nullable
              as PieChartSectionData?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PieChartTouchDataStateCopyWith<$Res>
    implements $PieChartTouchDataStateCopyWith<$Res> {
  factory _$$_PieChartTouchDataStateCopyWith(_$_PieChartTouchDataState value,
          $Res Function(_$_PieChartTouchDataState) then) =
      __$$_PieChartTouchDataStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PieChartSectionData? touchedSection});
}

/// @nodoc
class __$$_PieChartTouchDataStateCopyWithImpl<$Res>
    extends _$PieChartTouchDataStateCopyWithImpl<$Res,
        _$_PieChartTouchDataState>
    implements _$$_PieChartTouchDataStateCopyWith<$Res> {
  __$$_PieChartTouchDataStateCopyWithImpl(_$_PieChartTouchDataState _value,
      $Res Function(_$_PieChartTouchDataState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? touchedSection = freezed,
  }) {
    return _then(_$_PieChartTouchDataState(
      freezed == touchedSection
          ? _value.touchedSection
          : touchedSection // ignore: cast_nullable_to_non_nullable
              as PieChartSectionData?,
    ));
  }
}

/// @nodoc

class _$_PieChartTouchDataState implements _PieChartTouchDataState {
  const _$_PieChartTouchDataState(this.touchedSection);

  @override
  final PieChartSectionData? touchedSection;

  @override
  String toString() {
    return 'PieChartTouchDataState(touchedSection: $touchedSection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PieChartTouchDataState &&
            (identical(other.touchedSection, touchedSection) ||
                other.touchedSection == touchedSection));
  }

  @override
  int get hashCode => Object.hash(runtimeType, touchedSection);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PieChartTouchDataStateCopyWith<_$_PieChartTouchDataState> get copyWith =>
      __$$_PieChartTouchDataStateCopyWithImpl<_$_PieChartTouchDataState>(
          this, _$identity);
}

abstract class _PieChartTouchDataState implements PieChartTouchDataState {
  const factory _PieChartTouchDataState(
      final PieChartSectionData? touchedSection) = _$_PieChartTouchDataState;

  @override
  PieChartSectionData? get touchedSection;
  @override
  @JsonKey(ignore: true)
  _$$_PieChartTouchDataStateCopyWith<_$_PieChartTouchDataState> get copyWith =>
      throw _privateConstructorUsedError;
}
