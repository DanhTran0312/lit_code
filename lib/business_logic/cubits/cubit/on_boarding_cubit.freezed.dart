// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'on_boarding_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OnBoardingState _$OnBoardingStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'onBoardingNotCompleted':
      return OnBoardingNotCompleted.fromJson(json);
    case 'onBoardingCompleted':
      return OnBoardingCompleted.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'OnBoardingState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$OnBoardingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int currentStep) onBoardingNotCompleted,
    required TResult Function() onBoardingCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int currentStep)? onBoardingNotCompleted,
    TResult? Function()? onBoardingCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int currentStep)? onBoardingNotCompleted,
    TResult Function()? onBoardingCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnBoardingNotCompleted value)
        onBoardingNotCompleted,
    required TResult Function(OnBoardingCompleted value) onBoardingCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnBoardingNotCompleted value)? onBoardingNotCompleted,
    TResult? Function(OnBoardingCompleted value)? onBoardingCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnBoardingNotCompleted value)? onBoardingNotCompleted,
    TResult Function(OnBoardingCompleted value)? onBoardingCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnBoardingStateCopyWith<$Res> {
  factory $OnBoardingStateCopyWith(
          OnBoardingState value, $Res Function(OnBoardingState) then) =
      _$OnBoardingStateCopyWithImpl<$Res, OnBoardingState>;
}

/// @nodoc
class _$OnBoardingStateCopyWithImpl<$Res, $Val extends OnBoardingState>
    implements $OnBoardingStateCopyWith<$Res> {
  _$OnBoardingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OnBoardingNotCompletedCopyWith<$Res> {
  factory _$$OnBoardingNotCompletedCopyWith(_$OnBoardingNotCompleted value,
          $Res Function(_$OnBoardingNotCompleted) then) =
      __$$OnBoardingNotCompletedCopyWithImpl<$Res>;
  @useResult
  $Res call({int currentStep});
}

/// @nodoc
class __$$OnBoardingNotCompletedCopyWithImpl<$Res>
    extends _$OnBoardingStateCopyWithImpl<$Res, _$OnBoardingNotCompleted>
    implements _$$OnBoardingNotCompletedCopyWith<$Res> {
  __$$OnBoardingNotCompletedCopyWithImpl(_$OnBoardingNotCompleted _value,
      $Res Function(_$OnBoardingNotCompleted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentStep = null,
  }) {
    return _then(_$OnBoardingNotCompleted(
      null == currentStep
          ? _value.currentStep
          : currentStep // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OnBoardingNotCompleted implements OnBoardingNotCompleted {
  const _$OnBoardingNotCompleted(this.currentStep, {final String? $type})
      : $type = $type ?? 'onBoardingNotCompleted';

  factory _$OnBoardingNotCompleted.fromJson(Map<String, dynamic> json) =>
      _$$OnBoardingNotCompletedFromJson(json);

  @override
  final int currentStep;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OnBoardingState.onBoardingNotCompleted(currentStep: $currentStep)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnBoardingNotCompleted &&
            (identical(other.currentStep, currentStep) ||
                other.currentStep == currentStep));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currentStep);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnBoardingNotCompletedCopyWith<_$OnBoardingNotCompleted> get copyWith =>
      __$$OnBoardingNotCompletedCopyWithImpl<_$OnBoardingNotCompleted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int currentStep) onBoardingNotCompleted,
    required TResult Function() onBoardingCompleted,
  }) {
    return onBoardingNotCompleted(currentStep);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int currentStep)? onBoardingNotCompleted,
    TResult? Function()? onBoardingCompleted,
  }) {
    return onBoardingNotCompleted?.call(currentStep);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int currentStep)? onBoardingNotCompleted,
    TResult Function()? onBoardingCompleted,
    required TResult orElse(),
  }) {
    if (onBoardingNotCompleted != null) {
      return onBoardingNotCompleted(currentStep);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnBoardingNotCompleted value)
        onBoardingNotCompleted,
    required TResult Function(OnBoardingCompleted value) onBoardingCompleted,
  }) {
    return onBoardingNotCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnBoardingNotCompleted value)? onBoardingNotCompleted,
    TResult? Function(OnBoardingCompleted value)? onBoardingCompleted,
  }) {
    return onBoardingNotCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnBoardingNotCompleted value)? onBoardingNotCompleted,
    TResult Function(OnBoardingCompleted value)? onBoardingCompleted,
    required TResult orElse(),
  }) {
    if (onBoardingNotCompleted != null) {
      return onBoardingNotCompleted(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OnBoardingNotCompletedToJson(
      this,
    );
  }
}

abstract class OnBoardingNotCompleted implements OnBoardingState {
  const factory OnBoardingNotCompleted(final int currentStep) =
      _$OnBoardingNotCompleted;

  factory OnBoardingNotCompleted.fromJson(Map<String, dynamic> json) =
      _$OnBoardingNotCompleted.fromJson;

  int get currentStep;
  @JsonKey(ignore: true)
  _$$OnBoardingNotCompletedCopyWith<_$OnBoardingNotCompleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnBoardingCompletedCopyWith<$Res> {
  factory _$$OnBoardingCompletedCopyWith(_$OnBoardingCompleted value,
          $Res Function(_$OnBoardingCompleted) then) =
      __$$OnBoardingCompletedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnBoardingCompletedCopyWithImpl<$Res>
    extends _$OnBoardingStateCopyWithImpl<$Res, _$OnBoardingCompleted>
    implements _$$OnBoardingCompletedCopyWith<$Res> {
  __$$OnBoardingCompletedCopyWithImpl(
      _$OnBoardingCompleted _value, $Res Function(_$OnBoardingCompleted) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$OnBoardingCompleted implements OnBoardingCompleted {
  const _$OnBoardingCompleted({final String? $type})
      : $type = $type ?? 'onBoardingCompleted';

  factory _$OnBoardingCompleted.fromJson(Map<String, dynamic> json) =>
      _$$OnBoardingCompletedFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OnBoardingState.onBoardingCompleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnBoardingCompleted);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int currentStep) onBoardingNotCompleted,
    required TResult Function() onBoardingCompleted,
  }) {
    return onBoardingCompleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int currentStep)? onBoardingNotCompleted,
    TResult? Function()? onBoardingCompleted,
  }) {
    return onBoardingCompleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int currentStep)? onBoardingNotCompleted,
    TResult Function()? onBoardingCompleted,
    required TResult orElse(),
  }) {
    if (onBoardingCompleted != null) {
      return onBoardingCompleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnBoardingNotCompleted value)
        onBoardingNotCompleted,
    required TResult Function(OnBoardingCompleted value) onBoardingCompleted,
  }) {
    return onBoardingCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnBoardingNotCompleted value)? onBoardingNotCompleted,
    TResult? Function(OnBoardingCompleted value)? onBoardingCompleted,
  }) {
    return onBoardingCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnBoardingNotCompleted value)? onBoardingNotCompleted,
    TResult Function(OnBoardingCompleted value)? onBoardingCompleted,
    required TResult orElse(),
  }) {
    if (onBoardingCompleted != null) {
      return onBoardingCompleted(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OnBoardingCompletedToJson(
      this,
    );
  }
}

abstract class OnBoardingCompleted implements OnBoardingState {
  const factory OnBoardingCompleted() = _$OnBoardingCompleted;

  factory OnBoardingCompleted.fromJson(Map<String, dynamic> json) =
      _$OnBoardingCompleted.fromJson;
}
