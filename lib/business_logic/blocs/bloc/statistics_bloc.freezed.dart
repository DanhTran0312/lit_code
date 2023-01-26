// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'statistics_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StatisticsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, Question> completedQuestions)
        updateCompletedQuestions,
    required TResult Function(List<Question> totalQuestions)
        updateTotalQuestions,
    required TResult Function() resetStatistics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, Question> completedQuestions)?
        updateCompletedQuestions,
    TResult? Function(List<Question> totalQuestions)? updateTotalQuestions,
    TResult? Function()? resetStatistics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, Question> completedQuestions)?
        updateCompletedQuestions,
    TResult Function(List<Question> totalQuestions)? updateTotalQuestions,
    TResult Function()? resetStatistics,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateCompletedQuestions value)
        updateCompletedQuestions,
    required TResult Function(UpdateTotalQuestions value) updateTotalQuestions,
    required TResult Function(ResetStatistics value) resetStatistics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateCompletedQuestions value)? updateCompletedQuestions,
    TResult? Function(UpdateTotalQuestions value)? updateTotalQuestions,
    TResult? Function(ResetStatistics value)? resetStatistics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateCompletedQuestions value)? updateCompletedQuestions,
    TResult Function(UpdateTotalQuestions value)? updateTotalQuestions,
    TResult Function(ResetStatistics value)? resetStatistics,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticsEventCopyWith<$Res> {
  factory $StatisticsEventCopyWith(
          StatisticsEvent value, $Res Function(StatisticsEvent) then) =
      _$StatisticsEventCopyWithImpl<$Res, StatisticsEvent>;
}

/// @nodoc
class _$StatisticsEventCopyWithImpl<$Res, $Val extends StatisticsEvent>
    implements $StatisticsEventCopyWith<$Res> {
  _$StatisticsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateCompletedQuestionsCopyWith<$Res> {
  factory _$$UpdateCompletedQuestionsCopyWith(_$UpdateCompletedQuestions value,
          $Res Function(_$UpdateCompletedQuestions) then) =
      __$$UpdateCompletedQuestionsCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, Question> completedQuestions});
}

/// @nodoc
class __$$UpdateCompletedQuestionsCopyWithImpl<$Res>
    extends _$StatisticsEventCopyWithImpl<$Res, _$UpdateCompletedQuestions>
    implements _$$UpdateCompletedQuestionsCopyWith<$Res> {
  __$$UpdateCompletedQuestionsCopyWithImpl(_$UpdateCompletedQuestions _value,
      $Res Function(_$UpdateCompletedQuestions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? completedQuestions = null,
  }) {
    return _then(_$UpdateCompletedQuestions(
      completedQuestions: null == completedQuestions
          ? _value._completedQuestions
          : completedQuestions // ignore: cast_nullable_to_non_nullable
              as Map<String, Question>,
    ));
  }
}

/// @nodoc

class _$UpdateCompletedQuestions implements UpdateCompletedQuestions {
  const _$UpdateCompletedQuestions(
      {required final Map<String, Question> completedQuestions})
      : _completedQuestions = completedQuestions;

  final Map<String, Question> _completedQuestions;
  @override
  Map<String, Question> get completedQuestions {
    if (_completedQuestions is EqualUnmodifiableMapView)
      return _completedQuestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_completedQuestions);
  }

  @override
  String toString() {
    return 'StatisticsEvent.updateCompletedQuestions(completedQuestions: $completedQuestions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCompletedQuestions &&
            const DeepCollectionEquality()
                .equals(other._completedQuestions, _completedQuestions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_completedQuestions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCompletedQuestionsCopyWith<_$UpdateCompletedQuestions>
      get copyWith =>
          __$$UpdateCompletedQuestionsCopyWithImpl<_$UpdateCompletedQuestions>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, Question> completedQuestions)
        updateCompletedQuestions,
    required TResult Function(List<Question> totalQuestions)
        updateTotalQuestions,
    required TResult Function() resetStatistics,
  }) {
    return updateCompletedQuestions(completedQuestions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, Question> completedQuestions)?
        updateCompletedQuestions,
    TResult? Function(List<Question> totalQuestions)? updateTotalQuestions,
    TResult? Function()? resetStatistics,
  }) {
    return updateCompletedQuestions?.call(completedQuestions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, Question> completedQuestions)?
        updateCompletedQuestions,
    TResult Function(List<Question> totalQuestions)? updateTotalQuestions,
    TResult Function()? resetStatistics,
    required TResult orElse(),
  }) {
    if (updateCompletedQuestions != null) {
      return updateCompletedQuestions(completedQuestions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateCompletedQuestions value)
        updateCompletedQuestions,
    required TResult Function(UpdateTotalQuestions value) updateTotalQuestions,
    required TResult Function(ResetStatistics value) resetStatistics,
  }) {
    return updateCompletedQuestions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateCompletedQuestions value)? updateCompletedQuestions,
    TResult? Function(UpdateTotalQuestions value)? updateTotalQuestions,
    TResult? Function(ResetStatistics value)? resetStatistics,
  }) {
    return updateCompletedQuestions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateCompletedQuestions value)? updateCompletedQuestions,
    TResult Function(UpdateTotalQuestions value)? updateTotalQuestions,
    TResult Function(ResetStatistics value)? resetStatistics,
    required TResult orElse(),
  }) {
    if (updateCompletedQuestions != null) {
      return updateCompletedQuestions(this);
    }
    return orElse();
  }
}

abstract class UpdateCompletedQuestions implements StatisticsEvent {
  const factory UpdateCompletedQuestions(
          {required final Map<String, Question> completedQuestions}) =
      _$UpdateCompletedQuestions;

  Map<String, Question> get completedQuestions;
  @JsonKey(ignore: true)
  _$$UpdateCompletedQuestionsCopyWith<_$UpdateCompletedQuestions>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateTotalQuestionsCopyWith<$Res> {
  factory _$$UpdateTotalQuestionsCopyWith(_$UpdateTotalQuestions value,
          $Res Function(_$UpdateTotalQuestions) then) =
      __$$UpdateTotalQuestionsCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Question> totalQuestions});
}

/// @nodoc
class __$$UpdateTotalQuestionsCopyWithImpl<$Res>
    extends _$StatisticsEventCopyWithImpl<$Res, _$UpdateTotalQuestions>
    implements _$$UpdateTotalQuestionsCopyWith<$Res> {
  __$$UpdateTotalQuestionsCopyWithImpl(_$UpdateTotalQuestions _value,
      $Res Function(_$UpdateTotalQuestions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalQuestions = null,
  }) {
    return _then(_$UpdateTotalQuestions(
      totalQuestions: null == totalQuestions
          ? _value._totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ));
  }
}

/// @nodoc

class _$UpdateTotalQuestions implements UpdateTotalQuestions {
  const _$UpdateTotalQuestions({required final List<Question> totalQuestions})
      : _totalQuestions = totalQuestions;

  final List<Question> _totalQuestions;
  @override
  List<Question> get totalQuestions {
    if (_totalQuestions is EqualUnmodifiableListView) return _totalQuestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_totalQuestions);
  }

  @override
  String toString() {
    return 'StatisticsEvent.updateTotalQuestions(totalQuestions: $totalQuestions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTotalQuestions &&
            const DeepCollectionEquality()
                .equals(other._totalQuestions, _totalQuestions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_totalQuestions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTotalQuestionsCopyWith<_$UpdateTotalQuestions> get copyWith =>
      __$$UpdateTotalQuestionsCopyWithImpl<_$UpdateTotalQuestions>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, Question> completedQuestions)
        updateCompletedQuestions,
    required TResult Function(List<Question> totalQuestions)
        updateTotalQuestions,
    required TResult Function() resetStatistics,
  }) {
    return updateTotalQuestions(totalQuestions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, Question> completedQuestions)?
        updateCompletedQuestions,
    TResult? Function(List<Question> totalQuestions)? updateTotalQuestions,
    TResult? Function()? resetStatistics,
  }) {
    return updateTotalQuestions?.call(totalQuestions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, Question> completedQuestions)?
        updateCompletedQuestions,
    TResult Function(List<Question> totalQuestions)? updateTotalQuestions,
    TResult Function()? resetStatistics,
    required TResult orElse(),
  }) {
    if (updateTotalQuestions != null) {
      return updateTotalQuestions(totalQuestions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateCompletedQuestions value)
        updateCompletedQuestions,
    required TResult Function(UpdateTotalQuestions value) updateTotalQuestions,
    required TResult Function(ResetStatistics value) resetStatistics,
  }) {
    return updateTotalQuestions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateCompletedQuestions value)? updateCompletedQuestions,
    TResult? Function(UpdateTotalQuestions value)? updateTotalQuestions,
    TResult? Function(ResetStatistics value)? resetStatistics,
  }) {
    return updateTotalQuestions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateCompletedQuestions value)? updateCompletedQuestions,
    TResult Function(UpdateTotalQuestions value)? updateTotalQuestions,
    TResult Function(ResetStatistics value)? resetStatistics,
    required TResult orElse(),
  }) {
    if (updateTotalQuestions != null) {
      return updateTotalQuestions(this);
    }
    return orElse();
  }
}

abstract class UpdateTotalQuestions implements StatisticsEvent {
  const factory UpdateTotalQuestions(
      {required final List<Question> totalQuestions}) = _$UpdateTotalQuestions;

  List<Question> get totalQuestions;
  @JsonKey(ignore: true)
  _$$UpdateTotalQuestionsCopyWith<_$UpdateTotalQuestions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetStatisticsCopyWith<$Res> {
  factory _$$ResetStatisticsCopyWith(
          _$ResetStatistics value, $Res Function(_$ResetStatistics) then) =
      __$$ResetStatisticsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetStatisticsCopyWithImpl<$Res>
    extends _$StatisticsEventCopyWithImpl<$Res, _$ResetStatistics>
    implements _$$ResetStatisticsCopyWith<$Res> {
  __$$ResetStatisticsCopyWithImpl(
      _$ResetStatistics _value, $Res Function(_$ResetStatistics) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetStatistics implements ResetStatistics {
  const _$ResetStatistics();

  @override
  String toString() {
    return 'StatisticsEvent.resetStatistics()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetStatistics);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, Question> completedQuestions)
        updateCompletedQuestions,
    required TResult Function(List<Question> totalQuestions)
        updateTotalQuestions,
    required TResult Function() resetStatistics,
  }) {
    return resetStatistics();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, Question> completedQuestions)?
        updateCompletedQuestions,
    TResult? Function(List<Question> totalQuestions)? updateTotalQuestions,
    TResult? Function()? resetStatistics,
  }) {
    return resetStatistics?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, Question> completedQuestions)?
        updateCompletedQuestions,
    TResult Function(List<Question> totalQuestions)? updateTotalQuestions,
    TResult Function()? resetStatistics,
    required TResult orElse(),
  }) {
    if (resetStatistics != null) {
      return resetStatistics();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateCompletedQuestions value)
        updateCompletedQuestions,
    required TResult Function(UpdateTotalQuestions value) updateTotalQuestions,
    required TResult Function(ResetStatistics value) resetStatistics,
  }) {
    return resetStatistics(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateCompletedQuestions value)? updateCompletedQuestions,
    TResult? Function(UpdateTotalQuestions value)? updateTotalQuestions,
    TResult? Function(ResetStatistics value)? resetStatistics,
  }) {
    return resetStatistics?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateCompletedQuestions value)? updateCompletedQuestions,
    TResult Function(UpdateTotalQuestions value)? updateTotalQuestions,
    TResult Function(ResetStatistics value)? resetStatistics,
    required TResult orElse(),
  }) {
    if (resetStatistics != null) {
      return resetStatistics(this);
    }
    return orElse();
  }
}

abstract class ResetStatistics implements StatisticsEvent {
  const factory ResetStatistics() = _$ResetStatistics;
}

/// @nodoc
mixin _$StatisticsState {
  Map<String, Question> get completedQuestions =>
      throw _privateConstructorUsedError;
  List<Question> get totalQuestions => throw _privateConstructorUsedError;
  Statistics get statistics => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StatisticsStateCopyWith<StatisticsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticsStateCopyWith<$Res> {
  factory $StatisticsStateCopyWith(
          StatisticsState value, $Res Function(StatisticsState) then) =
      _$StatisticsStateCopyWithImpl<$Res, StatisticsState>;
  @useResult
  $Res call(
      {Map<String, Question> completedQuestions,
      List<Question> totalQuestions,
      Statistics statistics});

  $StatisticsCopyWith<$Res> get statistics;
}

/// @nodoc
class _$StatisticsStateCopyWithImpl<$Res, $Val extends StatisticsState>
    implements $StatisticsStateCopyWith<$Res> {
  _$StatisticsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? completedQuestions = null,
    Object? totalQuestions = null,
    Object? statistics = null,
  }) {
    return _then(_value.copyWith(
      completedQuestions: null == completedQuestions
          ? _value.completedQuestions
          : completedQuestions // ignore: cast_nullable_to_non_nullable
              as Map<String, Question>,
      totalQuestions: null == totalQuestions
          ? _value.totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      statistics: null == statistics
          ? _value.statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as Statistics,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StatisticsCopyWith<$Res> get statistics {
    return $StatisticsCopyWith<$Res>(_value.statistics, (value) {
      return _then(_value.copyWith(statistics: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StatisticsStateCopyWith<$Res>
    implements $StatisticsStateCopyWith<$Res> {
  factory _$$_StatisticsStateCopyWith(
          _$_StatisticsState value, $Res Function(_$_StatisticsState) then) =
      __$$_StatisticsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, Question> completedQuestions,
      List<Question> totalQuestions,
      Statistics statistics});

  @override
  $StatisticsCopyWith<$Res> get statistics;
}

/// @nodoc
class __$$_StatisticsStateCopyWithImpl<$Res>
    extends _$StatisticsStateCopyWithImpl<$Res, _$_StatisticsState>
    implements _$$_StatisticsStateCopyWith<$Res> {
  __$$_StatisticsStateCopyWithImpl(
      _$_StatisticsState _value, $Res Function(_$_StatisticsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? completedQuestions = null,
    Object? totalQuestions = null,
    Object? statistics = null,
  }) {
    return _then(_$_StatisticsState(
      completedQuestions: null == completedQuestions
          ? _value._completedQuestions
          : completedQuestions // ignore: cast_nullable_to_non_nullable
              as Map<String, Question>,
      totalQuestions: null == totalQuestions
          ? _value._totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      statistics: null == statistics
          ? _value.statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as Statistics,
    ));
  }
}

/// @nodoc

class _$_StatisticsState implements _StatisticsState {
  const _$_StatisticsState(
      {required final Map<String, Question> completedQuestions,
      required final List<Question> totalQuestions,
      required this.statistics})
      : _completedQuestions = completedQuestions,
        _totalQuestions = totalQuestions;

  final Map<String, Question> _completedQuestions;
  @override
  Map<String, Question> get completedQuestions {
    if (_completedQuestions is EqualUnmodifiableMapView)
      return _completedQuestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_completedQuestions);
  }

  final List<Question> _totalQuestions;
  @override
  List<Question> get totalQuestions {
    if (_totalQuestions is EqualUnmodifiableListView) return _totalQuestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_totalQuestions);
  }

  @override
  final Statistics statistics;

  @override
  String toString() {
    return 'StatisticsState(completedQuestions: $completedQuestions, totalQuestions: $totalQuestions, statistics: $statistics)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StatisticsState &&
            const DeepCollectionEquality()
                .equals(other._completedQuestions, _completedQuestions) &&
            const DeepCollectionEquality()
                .equals(other._totalQuestions, _totalQuestions) &&
            (identical(other.statistics, statistics) ||
                other.statistics == statistics));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_completedQuestions),
      const DeepCollectionEquality().hash(_totalQuestions),
      statistics);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StatisticsStateCopyWith<_$_StatisticsState> get copyWith =>
      __$$_StatisticsStateCopyWithImpl<_$_StatisticsState>(this, _$identity);
}

abstract class _StatisticsState implements StatisticsState {
  const factory _StatisticsState(
      {required final Map<String, Question> completedQuestions,
      required final List<Question> totalQuestions,
      required final Statistics statistics}) = _$_StatisticsState;

  @override
  Map<String, Question> get completedQuestions;
  @override
  List<Question> get totalQuestions;
  @override
  Statistics get statistics;
  @override
  @JsonKey(ignore: true)
  _$$_StatisticsStateCopyWith<_$_StatisticsState> get copyWith =>
      throw _privateConstructorUsedError;
}
