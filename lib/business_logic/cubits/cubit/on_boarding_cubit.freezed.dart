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
    case 'onBoarded':
      return OnBoarded.fromJson(json);
    case 'onBoardingStepOne':
      return OnBoardingStepOne.fromJson(json);
    case 'onBoardingStepTwo':
      return OnBoardingStepTwo.fromJson(json);
    case 'onBoardingStepThree':
      return OnBoardingStepThree.fromJson(json);
    case 'onBoardingError':
      return OnBoardingError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'OnBoardingState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$OnBoardingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onBoardingNotCompleted,
    required TResult Function() onBoarded,
    required TResult Function() onBoardingStepOne,
    required TResult Function() onBoardingStepTwo,
    required TResult Function() onBoardingStepThree,
    required TResult Function(String message) onBoardingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onBoardingNotCompleted,
    TResult? Function()? onBoarded,
    TResult? Function()? onBoardingStepOne,
    TResult? Function()? onBoardingStepTwo,
    TResult? Function()? onBoardingStepThree,
    TResult? Function(String message)? onBoardingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onBoardingNotCompleted,
    TResult Function()? onBoarded,
    TResult Function()? onBoardingStepOne,
    TResult Function()? onBoardingStepTwo,
    TResult Function()? onBoardingStepThree,
    TResult Function(String message)? onBoardingError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnBoardingNotCompleted value)
        onBoardingNotCompleted,
    required TResult Function(OnBoarded value) onBoarded,
    required TResult Function(OnBoardingStepOne value) onBoardingStepOne,
    required TResult Function(OnBoardingStepTwo value) onBoardingStepTwo,
    required TResult Function(OnBoardingStepThree value) onBoardingStepThree,
    required TResult Function(OnBoardingError value) onBoardingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnBoardingNotCompleted value)? onBoardingNotCompleted,
    TResult? Function(OnBoarded value)? onBoarded,
    TResult? Function(OnBoardingStepOne value)? onBoardingStepOne,
    TResult? Function(OnBoardingStepTwo value)? onBoardingStepTwo,
    TResult? Function(OnBoardingStepThree value)? onBoardingStepThree,
    TResult? Function(OnBoardingError value)? onBoardingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnBoardingNotCompleted value)? onBoardingNotCompleted,
    TResult Function(OnBoarded value)? onBoarded,
    TResult Function(OnBoardingStepOne value)? onBoardingStepOne,
    TResult Function(OnBoardingStepTwo value)? onBoardingStepTwo,
    TResult Function(OnBoardingStepThree value)? onBoardingStepThree,
    TResult Function(OnBoardingError value)? onBoardingError,
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
}

/// @nodoc
class __$$OnBoardingNotCompletedCopyWithImpl<$Res>
    extends _$OnBoardingStateCopyWithImpl<$Res, _$OnBoardingNotCompleted>
    implements _$$OnBoardingNotCompletedCopyWith<$Res> {
  __$$OnBoardingNotCompletedCopyWithImpl(_$OnBoardingNotCompleted _value,
      $Res Function(_$OnBoardingNotCompleted) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$OnBoardingNotCompleted extends OnBoardingNotCompleted {
  const _$OnBoardingNotCompleted({final String? $type})
      : $type = $type ?? 'onBoardingNotCompleted',
        super._();

  factory _$OnBoardingNotCompleted.fromJson(Map<String, dynamic> json) =>
      _$$OnBoardingNotCompletedFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OnBoardingState.onBoardingNotCompleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnBoardingNotCompleted);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onBoardingNotCompleted,
    required TResult Function() onBoarded,
    required TResult Function() onBoardingStepOne,
    required TResult Function() onBoardingStepTwo,
    required TResult Function() onBoardingStepThree,
    required TResult Function(String message) onBoardingError,
  }) {
    return onBoardingNotCompleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onBoardingNotCompleted,
    TResult? Function()? onBoarded,
    TResult? Function()? onBoardingStepOne,
    TResult? Function()? onBoardingStepTwo,
    TResult? Function()? onBoardingStepThree,
    TResult? Function(String message)? onBoardingError,
  }) {
    return onBoardingNotCompleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onBoardingNotCompleted,
    TResult Function()? onBoarded,
    TResult Function()? onBoardingStepOne,
    TResult Function()? onBoardingStepTwo,
    TResult Function()? onBoardingStepThree,
    TResult Function(String message)? onBoardingError,
    required TResult orElse(),
  }) {
    if (onBoardingNotCompleted != null) {
      return onBoardingNotCompleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnBoardingNotCompleted value)
        onBoardingNotCompleted,
    required TResult Function(OnBoarded value) onBoarded,
    required TResult Function(OnBoardingStepOne value) onBoardingStepOne,
    required TResult Function(OnBoardingStepTwo value) onBoardingStepTwo,
    required TResult Function(OnBoardingStepThree value) onBoardingStepThree,
    required TResult Function(OnBoardingError value) onBoardingError,
  }) {
    return onBoardingNotCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnBoardingNotCompleted value)? onBoardingNotCompleted,
    TResult? Function(OnBoarded value)? onBoarded,
    TResult? Function(OnBoardingStepOne value)? onBoardingStepOne,
    TResult? Function(OnBoardingStepTwo value)? onBoardingStepTwo,
    TResult? Function(OnBoardingStepThree value)? onBoardingStepThree,
    TResult? Function(OnBoardingError value)? onBoardingError,
  }) {
    return onBoardingNotCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnBoardingNotCompleted value)? onBoardingNotCompleted,
    TResult Function(OnBoarded value)? onBoarded,
    TResult Function(OnBoardingStepOne value)? onBoardingStepOne,
    TResult Function(OnBoardingStepTwo value)? onBoardingStepTwo,
    TResult Function(OnBoardingStepThree value)? onBoardingStepThree,
    TResult Function(OnBoardingError value)? onBoardingError,
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

abstract class OnBoardingNotCompleted extends OnBoardingState {
  const factory OnBoardingNotCompleted() = _$OnBoardingNotCompleted;
  const OnBoardingNotCompleted._() : super._();

  factory OnBoardingNotCompleted.fromJson(Map<String, dynamic> json) =
      _$OnBoardingNotCompleted.fromJson;
}

/// @nodoc
abstract class _$$OnBoardedCopyWith<$Res> {
  factory _$$OnBoardedCopyWith(
          _$OnBoarded value, $Res Function(_$OnBoarded) then) =
      __$$OnBoardedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnBoardedCopyWithImpl<$Res>
    extends _$OnBoardingStateCopyWithImpl<$Res, _$OnBoarded>
    implements _$$OnBoardedCopyWith<$Res> {
  __$$OnBoardedCopyWithImpl(
      _$OnBoarded _value, $Res Function(_$OnBoarded) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$OnBoarded extends OnBoarded {
  const _$OnBoarded({final String? $type})
      : $type = $type ?? 'onBoarded',
        super._();

  factory _$OnBoarded.fromJson(Map<String, dynamic> json) =>
      _$$OnBoardedFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OnBoardingState.onBoarded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnBoarded);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onBoardingNotCompleted,
    required TResult Function() onBoarded,
    required TResult Function() onBoardingStepOne,
    required TResult Function() onBoardingStepTwo,
    required TResult Function() onBoardingStepThree,
    required TResult Function(String message) onBoardingError,
  }) {
    return onBoarded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onBoardingNotCompleted,
    TResult? Function()? onBoarded,
    TResult? Function()? onBoardingStepOne,
    TResult? Function()? onBoardingStepTwo,
    TResult? Function()? onBoardingStepThree,
    TResult? Function(String message)? onBoardingError,
  }) {
    return onBoarded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onBoardingNotCompleted,
    TResult Function()? onBoarded,
    TResult Function()? onBoardingStepOne,
    TResult Function()? onBoardingStepTwo,
    TResult Function()? onBoardingStepThree,
    TResult Function(String message)? onBoardingError,
    required TResult orElse(),
  }) {
    if (onBoarded != null) {
      return onBoarded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnBoardingNotCompleted value)
        onBoardingNotCompleted,
    required TResult Function(OnBoarded value) onBoarded,
    required TResult Function(OnBoardingStepOne value) onBoardingStepOne,
    required TResult Function(OnBoardingStepTwo value) onBoardingStepTwo,
    required TResult Function(OnBoardingStepThree value) onBoardingStepThree,
    required TResult Function(OnBoardingError value) onBoardingError,
  }) {
    return onBoarded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnBoardingNotCompleted value)? onBoardingNotCompleted,
    TResult? Function(OnBoarded value)? onBoarded,
    TResult? Function(OnBoardingStepOne value)? onBoardingStepOne,
    TResult? Function(OnBoardingStepTwo value)? onBoardingStepTwo,
    TResult? Function(OnBoardingStepThree value)? onBoardingStepThree,
    TResult? Function(OnBoardingError value)? onBoardingError,
  }) {
    return onBoarded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnBoardingNotCompleted value)? onBoardingNotCompleted,
    TResult Function(OnBoarded value)? onBoarded,
    TResult Function(OnBoardingStepOne value)? onBoardingStepOne,
    TResult Function(OnBoardingStepTwo value)? onBoardingStepTwo,
    TResult Function(OnBoardingStepThree value)? onBoardingStepThree,
    TResult Function(OnBoardingError value)? onBoardingError,
    required TResult orElse(),
  }) {
    if (onBoarded != null) {
      return onBoarded(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OnBoardedToJson(
      this,
    );
  }
}

abstract class OnBoarded extends OnBoardingState {
  const factory OnBoarded() = _$OnBoarded;
  const OnBoarded._() : super._();

  factory OnBoarded.fromJson(Map<String, dynamic> json) = _$OnBoarded.fromJson;
}

/// @nodoc
abstract class _$$OnBoardingStepOneCopyWith<$Res> {
  factory _$$OnBoardingStepOneCopyWith(
          _$OnBoardingStepOne value, $Res Function(_$OnBoardingStepOne) then) =
      __$$OnBoardingStepOneCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnBoardingStepOneCopyWithImpl<$Res>
    extends _$OnBoardingStateCopyWithImpl<$Res, _$OnBoardingStepOne>
    implements _$$OnBoardingStepOneCopyWith<$Res> {
  __$$OnBoardingStepOneCopyWithImpl(
      _$OnBoardingStepOne _value, $Res Function(_$OnBoardingStepOne) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$OnBoardingStepOne extends OnBoardingStepOne {
  const _$OnBoardingStepOne({final String? $type})
      : $type = $type ?? 'onBoardingStepOne',
        super._();

  factory _$OnBoardingStepOne.fromJson(Map<String, dynamic> json) =>
      _$$OnBoardingStepOneFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OnBoardingState.onBoardingStepOne()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnBoardingStepOne);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onBoardingNotCompleted,
    required TResult Function() onBoarded,
    required TResult Function() onBoardingStepOne,
    required TResult Function() onBoardingStepTwo,
    required TResult Function() onBoardingStepThree,
    required TResult Function(String message) onBoardingError,
  }) {
    return onBoardingStepOne();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onBoardingNotCompleted,
    TResult? Function()? onBoarded,
    TResult? Function()? onBoardingStepOne,
    TResult? Function()? onBoardingStepTwo,
    TResult? Function()? onBoardingStepThree,
    TResult? Function(String message)? onBoardingError,
  }) {
    return onBoardingStepOne?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onBoardingNotCompleted,
    TResult Function()? onBoarded,
    TResult Function()? onBoardingStepOne,
    TResult Function()? onBoardingStepTwo,
    TResult Function()? onBoardingStepThree,
    TResult Function(String message)? onBoardingError,
    required TResult orElse(),
  }) {
    if (onBoardingStepOne != null) {
      return onBoardingStepOne();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnBoardingNotCompleted value)
        onBoardingNotCompleted,
    required TResult Function(OnBoarded value) onBoarded,
    required TResult Function(OnBoardingStepOne value) onBoardingStepOne,
    required TResult Function(OnBoardingStepTwo value) onBoardingStepTwo,
    required TResult Function(OnBoardingStepThree value) onBoardingStepThree,
    required TResult Function(OnBoardingError value) onBoardingError,
  }) {
    return onBoardingStepOne(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnBoardingNotCompleted value)? onBoardingNotCompleted,
    TResult? Function(OnBoarded value)? onBoarded,
    TResult? Function(OnBoardingStepOne value)? onBoardingStepOne,
    TResult? Function(OnBoardingStepTwo value)? onBoardingStepTwo,
    TResult? Function(OnBoardingStepThree value)? onBoardingStepThree,
    TResult? Function(OnBoardingError value)? onBoardingError,
  }) {
    return onBoardingStepOne?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnBoardingNotCompleted value)? onBoardingNotCompleted,
    TResult Function(OnBoarded value)? onBoarded,
    TResult Function(OnBoardingStepOne value)? onBoardingStepOne,
    TResult Function(OnBoardingStepTwo value)? onBoardingStepTwo,
    TResult Function(OnBoardingStepThree value)? onBoardingStepThree,
    TResult Function(OnBoardingError value)? onBoardingError,
    required TResult orElse(),
  }) {
    if (onBoardingStepOne != null) {
      return onBoardingStepOne(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OnBoardingStepOneToJson(
      this,
    );
  }
}

abstract class OnBoardingStepOne extends OnBoardingState {
  const factory OnBoardingStepOne() = _$OnBoardingStepOne;
  const OnBoardingStepOne._() : super._();

  factory OnBoardingStepOne.fromJson(Map<String, dynamic> json) =
      _$OnBoardingStepOne.fromJson;
}

/// @nodoc
abstract class _$$OnBoardingStepTwoCopyWith<$Res> {
  factory _$$OnBoardingStepTwoCopyWith(
          _$OnBoardingStepTwo value, $Res Function(_$OnBoardingStepTwo) then) =
      __$$OnBoardingStepTwoCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnBoardingStepTwoCopyWithImpl<$Res>
    extends _$OnBoardingStateCopyWithImpl<$Res, _$OnBoardingStepTwo>
    implements _$$OnBoardingStepTwoCopyWith<$Res> {
  __$$OnBoardingStepTwoCopyWithImpl(
      _$OnBoardingStepTwo _value, $Res Function(_$OnBoardingStepTwo) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$OnBoardingStepTwo extends OnBoardingStepTwo {
  const _$OnBoardingStepTwo({final String? $type})
      : $type = $type ?? 'onBoardingStepTwo',
        super._();

  factory _$OnBoardingStepTwo.fromJson(Map<String, dynamic> json) =>
      _$$OnBoardingStepTwoFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OnBoardingState.onBoardingStepTwo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnBoardingStepTwo);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onBoardingNotCompleted,
    required TResult Function() onBoarded,
    required TResult Function() onBoardingStepOne,
    required TResult Function() onBoardingStepTwo,
    required TResult Function() onBoardingStepThree,
    required TResult Function(String message) onBoardingError,
  }) {
    return onBoardingStepTwo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onBoardingNotCompleted,
    TResult? Function()? onBoarded,
    TResult? Function()? onBoardingStepOne,
    TResult? Function()? onBoardingStepTwo,
    TResult? Function()? onBoardingStepThree,
    TResult? Function(String message)? onBoardingError,
  }) {
    return onBoardingStepTwo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onBoardingNotCompleted,
    TResult Function()? onBoarded,
    TResult Function()? onBoardingStepOne,
    TResult Function()? onBoardingStepTwo,
    TResult Function()? onBoardingStepThree,
    TResult Function(String message)? onBoardingError,
    required TResult orElse(),
  }) {
    if (onBoardingStepTwo != null) {
      return onBoardingStepTwo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnBoardingNotCompleted value)
        onBoardingNotCompleted,
    required TResult Function(OnBoarded value) onBoarded,
    required TResult Function(OnBoardingStepOne value) onBoardingStepOne,
    required TResult Function(OnBoardingStepTwo value) onBoardingStepTwo,
    required TResult Function(OnBoardingStepThree value) onBoardingStepThree,
    required TResult Function(OnBoardingError value) onBoardingError,
  }) {
    return onBoardingStepTwo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnBoardingNotCompleted value)? onBoardingNotCompleted,
    TResult? Function(OnBoarded value)? onBoarded,
    TResult? Function(OnBoardingStepOne value)? onBoardingStepOne,
    TResult? Function(OnBoardingStepTwo value)? onBoardingStepTwo,
    TResult? Function(OnBoardingStepThree value)? onBoardingStepThree,
    TResult? Function(OnBoardingError value)? onBoardingError,
  }) {
    return onBoardingStepTwo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnBoardingNotCompleted value)? onBoardingNotCompleted,
    TResult Function(OnBoarded value)? onBoarded,
    TResult Function(OnBoardingStepOne value)? onBoardingStepOne,
    TResult Function(OnBoardingStepTwo value)? onBoardingStepTwo,
    TResult Function(OnBoardingStepThree value)? onBoardingStepThree,
    TResult Function(OnBoardingError value)? onBoardingError,
    required TResult orElse(),
  }) {
    if (onBoardingStepTwo != null) {
      return onBoardingStepTwo(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OnBoardingStepTwoToJson(
      this,
    );
  }
}

abstract class OnBoardingStepTwo extends OnBoardingState {
  const factory OnBoardingStepTwo() = _$OnBoardingStepTwo;
  const OnBoardingStepTwo._() : super._();

  factory OnBoardingStepTwo.fromJson(Map<String, dynamic> json) =
      _$OnBoardingStepTwo.fromJson;
}

/// @nodoc
abstract class _$$OnBoardingStepThreeCopyWith<$Res> {
  factory _$$OnBoardingStepThreeCopyWith(_$OnBoardingStepThree value,
          $Res Function(_$OnBoardingStepThree) then) =
      __$$OnBoardingStepThreeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnBoardingStepThreeCopyWithImpl<$Res>
    extends _$OnBoardingStateCopyWithImpl<$Res, _$OnBoardingStepThree>
    implements _$$OnBoardingStepThreeCopyWith<$Res> {
  __$$OnBoardingStepThreeCopyWithImpl(
      _$OnBoardingStepThree _value, $Res Function(_$OnBoardingStepThree) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$OnBoardingStepThree extends OnBoardingStepThree {
  const _$OnBoardingStepThree({final String? $type})
      : $type = $type ?? 'onBoardingStepThree',
        super._();

  factory _$OnBoardingStepThree.fromJson(Map<String, dynamic> json) =>
      _$$OnBoardingStepThreeFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OnBoardingState.onBoardingStepThree()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnBoardingStepThree);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onBoardingNotCompleted,
    required TResult Function() onBoarded,
    required TResult Function() onBoardingStepOne,
    required TResult Function() onBoardingStepTwo,
    required TResult Function() onBoardingStepThree,
    required TResult Function(String message) onBoardingError,
  }) {
    return onBoardingStepThree();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onBoardingNotCompleted,
    TResult? Function()? onBoarded,
    TResult? Function()? onBoardingStepOne,
    TResult? Function()? onBoardingStepTwo,
    TResult? Function()? onBoardingStepThree,
    TResult? Function(String message)? onBoardingError,
  }) {
    return onBoardingStepThree?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onBoardingNotCompleted,
    TResult Function()? onBoarded,
    TResult Function()? onBoardingStepOne,
    TResult Function()? onBoardingStepTwo,
    TResult Function()? onBoardingStepThree,
    TResult Function(String message)? onBoardingError,
    required TResult orElse(),
  }) {
    if (onBoardingStepThree != null) {
      return onBoardingStepThree();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnBoardingNotCompleted value)
        onBoardingNotCompleted,
    required TResult Function(OnBoarded value) onBoarded,
    required TResult Function(OnBoardingStepOne value) onBoardingStepOne,
    required TResult Function(OnBoardingStepTwo value) onBoardingStepTwo,
    required TResult Function(OnBoardingStepThree value) onBoardingStepThree,
    required TResult Function(OnBoardingError value) onBoardingError,
  }) {
    return onBoardingStepThree(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnBoardingNotCompleted value)? onBoardingNotCompleted,
    TResult? Function(OnBoarded value)? onBoarded,
    TResult? Function(OnBoardingStepOne value)? onBoardingStepOne,
    TResult? Function(OnBoardingStepTwo value)? onBoardingStepTwo,
    TResult? Function(OnBoardingStepThree value)? onBoardingStepThree,
    TResult? Function(OnBoardingError value)? onBoardingError,
  }) {
    return onBoardingStepThree?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnBoardingNotCompleted value)? onBoardingNotCompleted,
    TResult Function(OnBoarded value)? onBoarded,
    TResult Function(OnBoardingStepOne value)? onBoardingStepOne,
    TResult Function(OnBoardingStepTwo value)? onBoardingStepTwo,
    TResult Function(OnBoardingStepThree value)? onBoardingStepThree,
    TResult Function(OnBoardingError value)? onBoardingError,
    required TResult orElse(),
  }) {
    if (onBoardingStepThree != null) {
      return onBoardingStepThree(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OnBoardingStepThreeToJson(
      this,
    );
  }
}

abstract class OnBoardingStepThree extends OnBoardingState {
  const factory OnBoardingStepThree() = _$OnBoardingStepThree;
  const OnBoardingStepThree._() : super._();

  factory OnBoardingStepThree.fromJson(Map<String, dynamic> json) =
      _$OnBoardingStepThree.fromJson;
}

/// @nodoc
abstract class _$$OnBoardingErrorCopyWith<$Res> {
  factory _$$OnBoardingErrorCopyWith(
          _$OnBoardingError value, $Res Function(_$OnBoardingError) then) =
      __$$OnBoardingErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$OnBoardingErrorCopyWithImpl<$Res>
    extends _$OnBoardingStateCopyWithImpl<$Res, _$OnBoardingError>
    implements _$$OnBoardingErrorCopyWith<$Res> {
  __$$OnBoardingErrorCopyWithImpl(
      _$OnBoardingError _value, $Res Function(_$OnBoardingError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$OnBoardingError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OnBoardingError extends OnBoardingError {
  const _$OnBoardingError(this.message, {final String? $type})
      : $type = $type ?? 'onBoardingError',
        super._();

  factory _$OnBoardingError.fromJson(Map<String, dynamic> json) =>
      _$$OnBoardingErrorFromJson(json);

  @override
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OnBoardingState.onBoardingError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnBoardingError &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnBoardingErrorCopyWith<_$OnBoardingError> get copyWith =>
      __$$OnBoardingErrorCopyWithImpl<_$OnBoardingError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onBoardingNotCompleted,
    required TResult Function() onBoarded,
    required TResult Function() onBoardingStepOne,
    required TResult Function() onBoardingStepTwo,
    required TResult Function() onBoardingStepThree,
    required TResult Function(String message) onBoardingError,
  }) {
    return onBoardingError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onBoardingNotCompleted,
    TResult? Function()? onBoarded,
    TResult? Function()? onBoardingStepOne,
    TResult? Function()? onBoardingStepTwo,
    TResult? Function()? onBoardingStepThree,
    TResult? Function(String message)? onBoardingError,
  }) {
    return onBoardingError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onBoardingNotCompleted,
    TResult Function()? onBoarded,
    TResult Function()? onBoardingStepOne,
    TResult Function()? onBoardingStepTwo,
    TResult Function()? onBoardingStepThree,
    TResult Function(String message)? onBoardingError,
    required TResult orElse(),
  }) {
    if (onBoardingError != null) {
      return onBoardingError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnBoardingNotCompleted value)
        onBoardingNotCompleted,
    required TResult Function(OnBoarded value) onBoarded,
    required TResult Function(OnBoardingStepOne value) onBoardingStepOne,
    required TResult Function(OnBoardingStepTwo value) onBoardingStepTwo,
    required TResult Function(OnBoardingStepThree value) onBoardingStepThree,
    required TResult Function(OnBoardingError value) onBoardingError,
  }) {
    return onBoardingError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnBoardingNotCompleted value)? onBoardingNotCompleted,
    TResult? Function(OnBoarded value)? onBoarded,
    TResult? Function(OnBoardingStepOne value)? onBoardingStepOne,
    TResult? Function(OnBoardingStepTwo value)? onBoardingStepTwo,
    TResult? Function(OnBoardingStepThree value)? onBoardingStepThree,
    TResult? Function(OnBoardingError value)? onBoardingError,
  }) {
    return onBoardingError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnBoardingNotCompleted value)? onBoardingNotCompleted,
    TResult Function(OnBoarded value)? onBoarded,
    TResult Function(OnBoardingStepOne value)? onBoardingStepOne,
    TResult Function(OnBoardingStepTwo value)? onBoardingStepTwo,
    TResult Function(OnBoardingStepThree value)? onBoardingStepThree,
    TResult Function(OnBoardingError value)? onBoardingError,
    required TResult orElse(),
  }) {
    if (onBoardingError != null) {
      return onBoardingError(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OnBoardingErrorToJson(
      this,
    );
  }
}

abstract class OnBoardingError extends OnBoardingState {
  const factory OnBoardingError(final String message) = _$OnBoardingError;
  const OnBoardingError._() : super._();

  factory OnBoardingError.fromJson(Map<String, dynamic> json) =
      _$OnBoardingError.fromJson;

  String get message;
  @JsonKey(ignore: true)
  _$$OnBoardingErrorCopyWith<_$OnBoardingError> get copyWith =>
      throw _privateConstructorUsedError;
}
