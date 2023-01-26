// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'experience_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExperienceState _$ExperienceStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'notCompleted':
      return ExperienceNotCompleted.fromJson(json);
    case 'completed':
      return ExperienceCompleted.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ExperienceState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ExperienceState {
  Experience get experience => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Experience experience) notCompleted,
    required TResult Function(Experience experience) completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Experience experience)? notCompleted,
    TResult? Function(Experience experience)? completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Experience experience)? notCompleted,
    TResult Function(Experience experience)? completed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExperienceNotCompleted value) notCompleted,
    required TResult Function(ExperienceCompleted value) completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExperienceNotCompleted value)? notCompleted,
    TResult? Function(ExperienceCompleted value)? completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExperienceNotCompleted value)? notCompleted,
    TResult Function(ExperienceCompleted value)? completed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExperienceStateCopyWith<ExperienceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExperienceStateCopyWith<$Res> {
  factory $ExperienceStateCopyWith(
          ExperienceState value, $Res Function(ExperienceState) then) =
      _$ExperienceStateCopyWithImpl<$Res, ExperienceState>;
  @useResult
  $Res call({Experience experience});
}

/// @nodoc
class _$ExperienceStateCopyWithImpl<$Res, $Val extends ExperienceState>
    implements $ExperienceStateCopyWith<$Res> {
  _$ExperienceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? experience = null,
  }) {
    return _then(_value.copyWith(
      experience: null == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as Experience,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExperienceNotCompletedCopyWith<$Res>
    implements $ExperienceStateCopyWith<$Res> {
  factory _$$ExperienceNotCompletedCopyWith(_$ExperienceNotCompleted value,
          $Res Function(_$ExperienceNotCompleted) then) =
      __$$ExperienceNotCompletedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Experience experience});
}

/// @nodoc
class __$$ExperienceNotCompletedCopyWithImpl<$Res>
    extends _$ExperienceStateCopyWithImpl<$Res, _$ExperienceNotCompleted>
    implements _$$ExperienceNotCompletedCopyWith<$Res> {
  __$$ExperienceNotCompletedCopyWithImpl(_$ExperienceNotCompleted _value,
      $Res Function(_$ExperienceNotCompleted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? experience = null,
  }) {
    return _then(_$ExperienceNotCompleted(
      experience: null == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as Experience,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExperienceNotCompleted implements ExperienceNotCompleted {
  const _$ExperienceNotCompleted(
      {this.experience = Experience.beginner, final String? $type})
      : $type = $type ?? 'notCompleted';

  factory _$ExperienceNotCompleted.fromJson(Map<String, dynamic> json) =>
      _$$ExperienceNotCompletedFromJson(json);

  @override
  @JsonKey()
  final Experience experience;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ExperienceState.notCompleted(experience: $experience)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExperienceNotCompleted &&
            (identical(other.experience, experience) ||
                other.experience == experience));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, experience);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExperienceNotCompletedCopyWith<_$ExperienceNotCompleted> get copyWith =>
      __$$ExperienceNotCompletedCopyWithImpl<_$ExperienceNotCompleted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Experience experience) notCompleted,
    required TResult Function(Experience experience) completed,
  }) {
    return notCompleted(experience);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Experience experience)? notCompleted,
    TResult? Function(Experience experience)? completed,
  }) {
    return notCompleted?.call(experience);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Experience experience)? notCompleted,
    TResult Function(Experience experience)? completed,
    required TResult orElse(),
  }) {
    if (notCompleted != null) {
      return notCompleted(experience);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExperienceNotCompleted value) notCompleted,
    required TResult Function(ExperienceCompleted value) completed,
  }) {
    return notCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExperienceNotCompleted value)? notCompleted,
    TResult? Function(ExperienceCompleted value)? completed,
  }) {
    return notCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExperienceNotCompleted value)? notCompleted,
    TResult Function(ExperienceCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (notCompleted != null) {
      return notCompleted(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ExperienceNotCompletedToJson(
      this,
    );
  }
}

abstract class ExperienceNotCompleted implements ExperienceState {
  const factory ExperienceNotCompleted({final Experience experience}) =
      _$ExperienceNotCompleted;

  factory ExperienceNotCompleted.fromJson(Map<String, dynamic> json) =
      _$ExperienceNotCompleted.fromJson;

  @override
  Experience get experience;
  @override
  @JsonKey(ignore: true)
  _$$ExperienceNotCompletedCopyWith<_$ExperienceNotCompleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExperienceCompletedCopyWith<$Res>
    implements $ExperienceStateCopyWith<$Res> {
  factory _$$ExperienceCompletedCopyWith(_$ExperienceCompleted value,
          $Res Function(_$ExperienceCompleted) then) =
      __$$ExperienceCompletedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Experience experience});
}

/// @nodoc
class __$$ExperienceCompletedCopyWithImpl<$Res>
    extends _$ExperienceStateCopyWithImpl<$Res, _$ExperienceCompleted>
    implements _$$ExperienceCompletedCopyWith<$Res> {
  __$$ExperienceCompletedCopyWithImpl(
      _$ExperienceCompleted _value, $Res Function(_$ExperienceCompleted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? experience = null,
  }) {
    return _then(_$ExperienceCompleted(
      experience: null == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as Experience,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExperienceCompleted implements ExperienceCompleted {
  const _$ExperienceCompleted({required this.experience, final String? $type})
      : $type = $type ?? 'completed';

  factory _$ExperienceCompleted.fromJson(Map<String, dynamic> json) =>
      _$$ExperienceCompletedFromJson(json);

  @override
  final Experience experience;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ExperienceState.completed(experience: $experience)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExperienceCompleted &&
            (identical(other.experience, experience) ||
                other.experience == experience));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, experience);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExperienceCompletedCopyWith<_$ExperienceCompleted> get copyWith =>
      __$$ExperienceCompletedCopyWithImpl<_$ExperienceCompleted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Experience experience) notCompleted,
    required TResult Function(Experience experience) completed,
  }) {
    return completed(experience);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Experience experience)? notCompleted,
    TResult? Function(Experience experience)? completed,
  }) {
    return completed?.call(experience);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Experience experience)? notCompleted,
    TResult Function(Experience experience)? completed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(experience);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExperienceNotCompleted value) notCompleted,
    required TResult Function(ExperienceCompleted value) completed,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExperienceNotCompleted value)? notCompleted,
    TResult? Function(ExperienceCompleted value)? completed,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExperienceNotCompleted value)? notCompleted,
    TResult Function(ExperienceCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ExperienceCompletedToJson(
      this,
    );
  }
}

abstract class ExperienceCompleted implements ExperienceState {
  const factory ExperienceCompleted({required final Experience experience}) =
      _$ExperienceCompleted;

  factory ExperienceCompleted.fromJson(Map<String, dynamic> json) =
      _$ExperienceCompleted.fromJson;

  @override
  Experience get experience;
  @override
  @JsonKey(ignore: true)
  _$$ExperienceCompletedCopyWith<_$ExperienceCompleted> get copyWith =>
      throw _privateConstructorUsedError;
}
