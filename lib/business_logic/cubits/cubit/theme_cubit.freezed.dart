// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ThemeState _$ThemeStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'dark':
      return _Dark.fromJson(json);
    case 'light':
      return _Light.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ThemeState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ThemeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dark,
    required TResult Function() light,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dark,
    TResult? Function()? light,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dark,
    TResult Function()? light,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Dark value) dark,
    required TResult Function(_Light value) light,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Dark value)? dark,
    TResult? Function(_Light value)? light,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Dark value)? dark,
    TResult Function(_Light value)? light,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeStateCopyWith<$Res> {
  factory $ThemeStateCopyWith(
          ThemeState value, $Res Function(ThemeState) then) =
      _$ThemeStateCopyWithImpl<$Res, ThemeState>;
}

/// @nodoc
class _$ThemeStateCopyWithImpl<$Res, $Val extends ThemeState>
    implements $ThemeStateCopyWith<$Res> {
  _$ThemeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_DarkCopyWith<$Res> {
  factory _$$_DarkCopyWith(_$_Dark value, $Res Function(_$_Dark) then) =
      __$$_DarkCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DarkCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$_Dark>
    implements _$$_DarkCopyWith<$Res> {
  __$$_DarkCopyWithImpl(_$_Dark _value, $Res Function(_$_Dark) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_Dark extends _Dark {
  const _$_Dark({final String? $type})
      : $type = $type ?? 'dark',
        super._();

  factory _$_Dark.fromJson(Map<String, dynamic> json) => _$$_DarkFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ThemeState.dark()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Dark);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dark,
    required TResult Function() light,
  }) {
    return dark();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dark,
    TResult? Function()? light,
  }) {
    return dark?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dark,
    TResult Function()? light,
    required TResult orElse(),
  }) {
    if (dark != null) {
      return dark();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Dark value) dark,
    required TResult Function(_Light value) light,
  }) {
    return dark(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Dark value)? dark,
    TResult? Function(_Light value)? light,
  }) {
    return dark?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Dark value)? dark,
    TResult Function(_Light value)? light,
    required TResult orElse(),
  }) {
    if (dark != null) {
      return dark(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_DarkToJson(
      this,
    );
  }
}

abstract class _Dark extends ThemeState {
  const factory _Dark() = _$_Dark;
  const _Dark._() : super._();

  factory _Dark.fromJson(Map<String, dynamic> json) = _$_Dark.fromJson;
}

/// @nodoc
abstract class _$$_LightCopyWith<$Res> {
  factory _$$_LightCopyWith(_$_Light value, $Res Function(_$_Light) then) =
      __$$_LightCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LightCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$_Light>
    implements _$$_LightCopyWith<$Res> {
  __$$_LightCopyWithImpl(_$_Light _value, $Res Function(_$_Light) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_Light extends _Light {
  const _$_Light({final String? $type})
      : $type = $type ?? 'light',
        super._();

  factory _$_Light.fromJson(Map<String, dynamic> json) =>
      _$$_LightFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ThemeState.light()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Light);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dark,
    required TResult Function() light,
  }) {
    return light();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dark,
    TResult? Function()? light,
  }) {
    return light?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dark,
    TResult Function()? light,
    required TResult orElse(),
  }) {
    if (light != null) {
      return light();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Dark value) dark,
    required TResult Function(_Light value) light,
  }) {
    return light(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Dark value)? dark,
    TResult? Function(_Light value)? light,
  }) {
    return light?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Dark value)? dark,
    TResult Function(_Light value)? light,
    required TResult orElse(),
  }) {
    if (light != null) {
      return light(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_LightToJson(
      this,
    );
  }
}

abstract class _Light extends ThemeState {
  const factory _Light() = _$_Light;
  const _Light._() : super._();

  factory _Light.fromJson(Map<String, dynamic> json) = _$_Light.fromJson;
}
