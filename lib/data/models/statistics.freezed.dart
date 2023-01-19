// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'statistics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Statistics {
  List<Question>? get completedQuestions => throw _privateConstructorUsedError;
  List<Question>? get totalQuestions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StatisticsCopyWith<Statistics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticsCopyWith<$Res> {
  factory $StatisticsCopyWith(
          Statistics value, $Res Function(Statistics) then) =
      _$StatisticsCopyWithImpl<$Res, Statistics>;
  @useResult
  $Res call(
      {List<Question>? completedQuestions, List<Question>? totalQuestions});
}

/// @nodoc
class _$StatisticsCopyWithImpl<$Res, $Val extends Statistics>
    implements $StatisticsCopyWith<$Res> {
  _$StatisticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? completedQuestions = freezed,
    Object? totalQuestions = freezed,
  }) {
    return _then(_value.copyWith(
      completedQuestions: freezed == completedQuestions
          ? _value.completedQuestions
          : completedQuestions // ignore: cast_nullable_to_non_nullable
              as List<Question>?,
      totalQuestions: freezed == totalQuestions
          ? _value.totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as List<Question>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StatisticsCopyWith<$Res>
    implements $StatisticsCopyWith<$Res> {
  factory _$$_StatisticsCopyWith(
          _$_Statistics value, $Res Function(_$_Statistics) then) =
      __$$_StatisticsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Question>? completedQuestions, List<Question>? totalQuestions});
}

/// @nodoc
class __$$_StatisticsCopyWithImpl<$Res>
    extends _$StatisticsCopyWithImpl<$Res, _$_Statistics>
    implements _$$_StatisticsCopyWith<$Res> {
  __$$_StatisticsCopyWithImpl(
      _$_Statistics _value, $Res Function(_$_Statistics) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? completedQuestions = freezed,
    Object? totalQuestions = freezed,
  }) {
    return _then(_$_Statistics(
      completedQuestions: freezed == completedQuestions
          ? _value._completedQuestions
          : completedQuestions // ignore: cast_nullable_to_non_nullable
              as List<Question>?,
      totalQuestions: freezed == totalQuestions
          ? _value._totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as List<Question>?,
    ));
  }
}

/// @nodoc

class _$_Statistics extends _Statistics {
  const _$_Statistics(
      {final List<Question>? completedQuestions,
      final List<Question>? totalQuestions})
      : _completedQuestions = completedQuestions,
        _totalQuestions = totalQuestions,
        super._();

  final List<Question>? _completedQuestions;
  @override
  List<Question>? get completedQuestions {
    final value = _completedQuestions;
    if (value == null) return null;
    if (_completedQuestions is EqualUnmodifiableListView)
      return _completedQuestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Question>? _totalQuestions;
  @override
  List<Question>? get totalQuestions {
    final value = _totalQuestions;
    if (value == null) return null;
    if (_totalQuestions is EqualUnmodifiableListView) return _totalQuestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Statistics(completedQuestions: $completedQuestions, totalQuestions: $totalQuestions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Statistics &&
            const DeepCollectionEquality()
                .equals(other._completedQuestions, _completedQuestions) &&
            const DeepCollectionEquality()
                .equals(other._totalQuestions, _totalQuestions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_completedQuestions),
      const DeepCollectionEquality().hash(_totalQuestions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StatisticsCopyWith<_$_Statistics> get copyWith =>
      __$$_StatisticsCopyWithImpl<_$_Statistics>(this, _$identity);
}

abstract class _Statistics extends Statistics {
  const factory _Statistics(
      {final List<Question>? completedQuestions,
      final List<Question>? totalQuestions}) = _$_Statistics;
  const _Statistics._() : super._();

  @override
  List<Question>? get completedQuestions;
  @override
  List<Question>? get totalQuestions;
  @override
  @JsonKey(ignore: true)
  _$$_StatisticsCopyWith<_$_Statistics> get copyWith =>
      throw _privateConstructorUsedError;
}
