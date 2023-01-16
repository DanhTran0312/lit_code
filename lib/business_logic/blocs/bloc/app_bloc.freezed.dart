// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appLogoutRequested,
    required TResult Function(User user) appUserChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appLogoutRequested,
    TResult? Function(User user)? appUserChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appLogoutRequested,
    TResult Function(User user)? appUserChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLogoutRequested value) appLogoutRequested,
    required TResult Function(AppUserChanged value) appUserChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLogoutRequested value)? appLogoutRequested,
    TResult? Function(AppUserChanged value)? appUserChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLogoutRequested value)? appLogoutRequested,
    TResult Function(AppUserChanged value)? appUserChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res, AppEvent>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res, $Val extends AppEvent>
    implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AppLogoutRequestedCopyWith<$Res> {
  factory _$$AppLogoutRequestedCopyWith(_$AppLogoutRequested value,
          $Res Function(_$AppLogoutRequested) then) =
      __$$AppLogoutRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppLogoutRequestedCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$AppLogoutRequested>
    implements _$$AppLogoutRequestedCopyWith<$Res> {
  __$$AppLogoutRequestedCopyWithImpl(
      _$AppLogoutRequested _value, $Res Function(_$AppLogoutRequested) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppLogoutRequested implements AppLogoutRequested {
  const _$AppLogoutRequested();

  @override
  String toString() {
    return 'AppEvent.appLogoutRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppLogoutRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appLogoutRequested,
    required TResult Function(User user) appUserChanged,
  }) {
    return appLogoutRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appLogoutRequested,
    TResult? Function(User user)? appUserChanged,
  }) {
    return appLogoutRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appLogoutRequested,
    TResult Function(User user)? appUserChanged,
    required TResult orElse(),
  }) {
    if (appLogoutRequested != null) {
      return appLogoutRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLogoutRequested value) appLogoutRequested,
    required TResult Function(AppUserChanged value) appUserChanged,
  }) {
    return appLogoutRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLogoutRequested value)? appLogoutRequested,
    TResult? Function(AppUserChanged value)? appUserChanged,
  }) {
    return appLogoutRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLogoutRequested value)? appLogoutRequested,
    TResult Function(AppUserChanged value)? appUserChanged,
    required TResult orElse(),
  }) {
    if (appLogoutRequested != null) {
      return appLogoutRequested(this);
    }
    return orElse();
  }
}

abstract class AppLogoutRequested implements AppEvent {
  const factory AppLogoutRequested() = _$AppLogoutRequested;
}

/// @nodoc
abstract class _$$AppUserChangedCopyWith<$Res> {
  factory _$$AppUserChangedCopyWith(
          _$AppUserChanged value, $Res Function(_$AppUserChanged) then) =
      __$$AppUserChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$AppUserChangedCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$AppUserChanged>
    implements _$$AppUserChangedCopyWith<$Res> {
  __$$AppUserChangedCopyWithImpl(
      _$AppUserChanged _value, $Res Function(_$AppUserChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$AppUserChanged(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$AppUserChanged implements AppUserChanged {
  const _$AppUserChanged(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AppEvent.appUserChanged(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppUserChanged &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppUserChangedCopyWith<_$AppUserChanged> get copyWith =>
      __$$AppUserChangedCopyWithImpl<_$AppUserChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appLogoutRequested,
    required TResult Function(User user) appUserChanged,
  }) {
    return appUserChanged(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appLogoutRequested,
    TResult? Function(User user)? appUserChanged,
  }) {
    return appUserChanged?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appLogoutRequested,
    TResult Function(User user)? appUserChanged,
    required TResult orElse(),
  }) {
    if (appUserChanged != null) {
      return appUserChanged(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLogoutRequested value) appLogoutRequested,
    required TResult Function(AppUserChanged value) appUserChanged,
  }) {
    return appUserChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLogoutRequested value)? appLogoutRequested,
    TResult? Function(AppUserChanged value)? appUserChanged,
  }) {
    return appUserChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLogoutRequested value)? appLogoutRequested,
    TResult Function(AppUserChanged value)? appUserChanged,
    required TResult orElse(),
  }) {
    if (appUserChanged != null) {
      return appUserChanged(this);
    }
    return orElse();
  }
}

abstract class AppUserChanged implements AppEvent {
  const factory AppUserChanged(final User user) = _$AppUserChanged;

  User get user;
  @JsonKey(ignore: true)
  _$$AppUserChangedCopyWith<_$AppUserChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppState {
  AppStatus get status => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user, AppStatus status) authenticated,
    required TResult Function(AppStatus status) unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user, AppStatus status)? authenticated,
    TResult? Function(AppStatus status)? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user, AppStatus status)? authenticated,
    TResult Function(AppStatus status)? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call({AppStatus status});
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthenticatedCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$$AuthenticatedCopyWith(
          _$Authenticated value, $Res Function(_$Authenticated) then) =
      __$$AuthenticatedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User user, AppStatus status});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$AuthenticatedCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$Authenticated>
    implements _$$AuthenticatedCopyWith<$Res> {
  __$$AuthenticatedCopyWithImpl(
      _$Authenticated _value, $Res Function(_$Authenticated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? status = null,
  }) {
    return _then(_$Authenticated(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppStatus,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$Authenticated implements Authenticated {
  const _$Authenticated(
      {required this.user, this.status = AppStatus.authenticated});

  @override
  final User user;
  @override
  @JsonKey()
  final AppStatus status;

  @override
  String toString() {
    return 'AppState.authenticated(user: $user, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Authenticated &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticatedCopyWith<_$Authenticated> get copyWith =>
      __$$AuthenticatedCopyWithImpl<_$Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user, AppStatus status) authenticated,
    required TResult Function(AppStatus status) unauthenticated,
  }) {
    return authenticated(user, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user, AppStatus status)? authenticated,
    TResult? Function(AppStatus status)? unauthenticated,
  }) {
    return authenticated?.call(user, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user, AppStatus status)? authenticated,
    TResult Function(AppStatus status)? unauthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements AppState {
  const factory Authenticated(
      {required final User user, final AppStatus status}) = _$Authenticated;

  User get user;
  @override
  AppStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticatedCopyWith<_$Authenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnauthenticatedCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$$UnauthenticatedCopyWith(
          _$Unauthenticated value, $Res Function(_$Unauthenticated) then) =
      __$$UnauthenticatedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppStatus status});
}

/// @nodoc
class __$$UnauthenticatedCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$Unauthenticated>
    implements _$$UnauthenticatedCopyWith<$Res> {
  __$$UnauthenticatedCopyWithImpl(
      _$Unauthenticated _value, $Res Function(_$Unauthenticated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$Unauthenticated(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppStatus,
    ));
  }
}

/// @nodoc

class _$Unauthenticated implements Unauthenticated {
  const _$Unauthenticated({this.status = AppStatus.unauthenticated});

  @override
  @JsonKey()
  final AppStatus status;

  @override
  String toString() {
    return 'AppState.unauthenticated(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Unauthenticated &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnauthenticatedCopyWith<_$Unauthenticated> get copyWith =>
      __$$UnauthenticatedCopyWithImpl<_$Unauthenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user, AppStatus status) authenticated,
    required TResult Function(AppStatus status) unauthenticated,
  }) {
    return unauthenticated(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user, AppStatus status)? authenticated,
    TResult? Function(AppStatus status)? unauthenticated,
  }) {
    return unauthenticated?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user, AppStatus status)? authenticated,
    TResult Function(AppStatus status)? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class Unauthenticated implements AppState {
  const factory Unauthenticated({final AppStatus status}) = _$Unauthenticated;

  @override
  AppStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$UnauthenticatedCopyWith<_$Unauthenticated> get copyWith =>
      throw _privateConstructorUsedError;
}
